class Pool < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
end
