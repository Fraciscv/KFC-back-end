class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :birthdate
    
    has_many :comments
    
  end