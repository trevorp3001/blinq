require 'obscenity/active_model'

class Post < ActiveRecord::Base


	has_many :votes

	validates :latitude, presence: true
  validates :longitude, presence: true
  validates :address, presence: true

  geocoded_by :ip_address
  reverse_geocoded_by :latitude, :longitude
  before_validation :geocode, :reverse_geocode



	validates :post, presence: true, length: { minimum: 5, maximum: 160}, obscenity: {sanitize: true, replacement: :vowels}
	



end
