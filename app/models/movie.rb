class Movie < ApplicationRecord
  validates :title, uniqueness: true
  has_many :bookmarks
  validates :title, :overview, presence: true
end
