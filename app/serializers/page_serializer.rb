class PageSerializer < ActiveModel::Serializer
  attributes :permalink, :name, :title, :description, :position
end

