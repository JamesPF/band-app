class Song
  include Mongoid::Document
  field :title, type: String
  field :code, type: String
end
