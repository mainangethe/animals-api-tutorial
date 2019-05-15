class V1::CatsSerializer < ActiveModel::Serializer
  type 'cats'
  attributes :id, :name
  link :self do
    href "/cats/#{ object.id }"
  end

end
