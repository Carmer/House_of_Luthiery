class Instrument < ActiveRecord::Base
  has_attached_file :image, styles: { large: "300X300",
                                      medium: "200X200>",
                                      thumb: "75x75>" }, default_url: "product_photo_coming_soon.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :name, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true

  scope :signature, -> {where(custom: false)}
  scope :custom,    -> {where(custom: true)}

  has_many :specs
  has_many :options
  has_many :photos

  before_validation :generate_slug

  def generate_slug
    self.slug = self.name.parameterize
  end

  def print_specs
    specs.map do |spec|
      spec.description
    end.join(", ")
  end

  def print_options
    options.map do |spec|
      spec.description
    end.join(", ")
  end

  def update_related_models(params)
    params[:specs].split(",").each { |spec| self.specs.create( description: spec ) } if params[:specs]
    params[:options].split(",").each { |option| self.options.create( description: option ) } if params[:options]
    params[:photos].values.each { |photo| self.photos.create(image: photo)} if params[:photos]
  end
end
