class Animal < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :nom, :presence, :especes, :age, :localisation, :prix, presence: true
end
