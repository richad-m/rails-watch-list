class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  # validates_uniqueness_of [:movie_id, :list_id]
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: {scope: :list}
end
