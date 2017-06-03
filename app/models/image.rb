class Image < ApplicationRecord
  attr_accessor :name

  belongs_to :imageable, polymorphic: true

  has_attached_file :file, styles: {
    medium: '400',
    large: '800'
  }
end
