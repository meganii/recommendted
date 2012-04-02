class TedViewer < Padrino::Application
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers

  enable :sessions
  layout :layout
  set :haml ,{:format => :html5}

  get '/' do
    @movie = Movie.all()
    haml :index
  end

  post '/' do
    require 'open-uri'

    @movie = Movie.new()
    @movie.url = params[:url]
    
    doc = Nokogiri::HTML(open(@movie.url))
    @movie.mp4 = doc.xpath("//meta[@property='og:video']").attribute("content").content
    @movie.img = doc.xpath("//meta[@property='og:image']").attribute("content").content
    @movie.title = doc.xpath("//div[@id='share_and_save']").first.attribute("data-title").content

    @movie.save
    redirect '/'
  end

  get '/new' do    
    haml :new
  end
end
