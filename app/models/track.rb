class Track < ApplicationRecord

  validates :title, uniqueness: { scope: :artist }

end
