class Page < ApplicationRecord
  attr_accessor :permalink, :name, :title, :description, :position
  default_scope { order(position: :asc) }

  has_many :projects
end
