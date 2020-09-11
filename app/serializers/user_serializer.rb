class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :birthdate, :bio, :imageURL
    
    # has_many :comments
    
  end