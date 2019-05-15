class V1::CatSerializer < ActiveModel::Serializer
  belongs_to :person
  attributes :id, :name, :age, :breed, :favourite_food, :owner

  def owner
    {
      owner_name: self.object.person.name
    }
  end

  link :owner_link do
    href "/people/#{object.person.id}"
  end
  
  link :others, '/cats'
end