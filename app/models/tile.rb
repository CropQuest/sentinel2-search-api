class Tile < ApplicationRecord
  belongs_to :mgrs_grid, primary_key: 'name', foreign_key: 'mgrs_grid_name'
  belongs_to :product, primary_key: 'name', foreign_key: 'product_name'

  validates_uniqueness_of :path

  def thumbnail
    base_url = "https://sentinel-s2-l1c.s3.amazonaws.com/"
    preview = "/preview.jpg"
    return "#{base_url}#{path}#{preview}"
  end
end
