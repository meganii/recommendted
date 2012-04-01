class TedViewer < Padrino::Application
  register Padrino::Rendering
  register Padrino::Mailer
  register Padrino::Helpers

  enable :sessions

  get '/' do
    @movie = Movie.all()
    haml :index
  end

  post '/' do
    require 'open-uri'

    @movie = Movie.new()
    @movie.title = params[:title]
    @movie.url = params[:url]
    
    doc = Nokogiri::HTML(open(@movie.url))
    mp4 = doc.xpath("//meta[@property='og:video']").attribute("content").content
    
    @movie.mp4 = mp4
    @movie.save
    redirect '/'
  end

  get '/new' do    
    haml :new
  end
end
