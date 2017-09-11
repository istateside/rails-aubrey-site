class Project < ApplicationRecord
  attr_accessor :permalink, :title, :description, :position
  default_scope { order(position: :asc) }

  belongs_to :page
  has_one :cover_image, as: :imageable
  has_many :images, as: :imageable

  acts_as_list scope: :page

  before_create :set_permalink
  before_save :set_position

  def set_permalink
    if permalink.blank? && title.present?
      self.permalink = title.downcase.gsub(' ', '-')
    end
  end
end
