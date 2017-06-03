class Project < ApplicationRecord
  attr_accessor :permalink, :name, :description, :position

  has_one :cover_image, as: :imageable
end
