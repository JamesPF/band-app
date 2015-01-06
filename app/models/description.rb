class Description
  include Mongoid::Document
  field :header, type: String
  field :body, type: String
  field :check_box, type: Integer
end
