class Product < ActiveRecord::Base
  belongs_to :user
  has_many :categories, dependent: :destroy

  has_many_attached :images
  validate :image_type


  def thumbnail(input, width)
    images[input].variant(resize: width).processed if images.attached?
  end
  
  private

  def image_type
    errors.add(:images, 'are missing!') unless images.attached?
    images.each do |image|
      errors.add(:images, 'need to be a PNG or GIF') unless image.content_type.in?(%('image/png image/gif'))
    end
  end
end
