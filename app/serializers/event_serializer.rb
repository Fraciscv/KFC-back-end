class EventSerializer < ActiveModel::Serializer
    attributes :id, :content, :conceptionDate
    
    has_many :comments
  end