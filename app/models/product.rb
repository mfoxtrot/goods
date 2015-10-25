class Product < ActiveRecord::Base

  belongs_to :user
  dragonfly_accessor :image

  validates :name, presence: true
  validates :description, presence: true
  validates :image_uid, presence: true

  validates_property :format, of: :image, in: [:jpeg, :jpg, :png, :bmp], case_sensitive: false,
                   message: "should be either .jpeg, .jpg, .png, .bmp", if: :image_changed?
end
