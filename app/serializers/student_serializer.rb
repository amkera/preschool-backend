class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :allergies

  has_many :payments
end

#serializers get checked before the model when json is rendered, and the front end
#wouldn't know about the relationship between students and payments, so I had
#to specify that in the serializer
