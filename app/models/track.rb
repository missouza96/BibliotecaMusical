class Track < ApplicationRecord
  belongs_to :album
  belongs_to :genre
  belongs_to :media_type

  scope :filter, ->(name) { where("name LIKE ?", "%#{name}%") if name.present? }
  validates_presence_of :name, :album, :media_type, :genre,
                        :milliseconds, :bytes, :unit_price
  validates :milliseconds, :unit_price,:bytes, :numericality  => { :greater_than_or_equal_to => 0, message: 'must be greater than 0'}
end
