class V1::PeopleSerializer < ActiveModel::Serializer
  type 'person'
  attributes :id, :name, :pets
  link :self do
    href "/people/#{ object.id }"
  end
end
