class Project < ApplicationRecord
  attr_accessor :permalink, :name, :description, :position

  belongs_to :page
  has_one :cover_image, as: :imageable
  has_many :images, as: :imageable
end
