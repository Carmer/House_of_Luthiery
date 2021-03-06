class Photo < ActiveRecord::Base
  has_attached_file :image, styles: { large: "600X600",
                                      medium: "300x300>",
                                      thumb: "100x100>" }, default_url: "product_photo_coming_soon.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  belongs_to :instrument
end
