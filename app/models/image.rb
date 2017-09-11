class Image < ApplicationRecord
  attr_accessor :name

  acts_as_list scope: :imageable

  belongs_to :imageable, polymorphic: true

  has_attached_file :file, styles: {
    medium: '400',
    large: '800'
  }
end
