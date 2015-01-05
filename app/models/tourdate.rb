class Tourdate
  include Mongoid::Document
  field :date, type: String
  field :city, type: String
  field :venue, type: String
  field :time, type: String
  field :address, type: String
  field :tickets, type: String
end
