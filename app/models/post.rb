class Post

  include Mongoid::Document

  field :date, type: String
  field :title, type: String
  field :body, type: String
  
end
