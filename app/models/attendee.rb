class Attendee < ApplicationRecord
	# validates :login, presence: true
	belongs_to :user
	has_many :stamps, dependent: :delete_all
	paginates_per 6
end
