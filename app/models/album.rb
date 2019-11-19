class Album < ApplicationRecord
  belongs_to :artist
  has_many :tracks

  scope :filter, ->(title) { where("title LIKE ?", "%#{title}%") if title.present? }
  scope :filter, ->(artist) { where("artist LIKE ?", "%#{artist}%") if artist.present? }

  validates_presence_of :title, :artist
end
