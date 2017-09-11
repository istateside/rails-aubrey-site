class PageSerializer < ActiveModel::Serializer
  attributes :permalink, :name, :title, :description, :position
  embed :ids
end

