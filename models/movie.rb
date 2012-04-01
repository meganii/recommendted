class Movie
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :title, String
  property :url, String
  property :mp4, String
  
end
