class Description
  include Mongoid::Document
  include Mongoid::Paperclip
  field :header, type: String
  field :body, type: String
  field :check_box, type: Integer

  has_mongoid_attached_file :avatar
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
