class Description
  include Mongoid::Document
  field :header, type: String
  field :body, type: String
  field :image, type: String
end
