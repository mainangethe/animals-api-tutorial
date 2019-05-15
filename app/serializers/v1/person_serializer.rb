class V1::PersonSerializer < ActiveModel::Serializer
  has_many :cats
  type 'person'
  attributes :id, :name, :age, :pets

  def pets
    self.object.cats.map do |cat|
      {
        pet_name: cat.name,
        pet_age: cat.age,
        pet_link: "/cats/#{ cat.id }"
      }
    end
  end

  link :pets do
    href "/cats"
  end

  link :others, '/people'

end
