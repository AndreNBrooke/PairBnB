class Booking < ApplicationRecord
	belongs_to :user
	belongs_to :listing
	self.per_page = 10
	
end
