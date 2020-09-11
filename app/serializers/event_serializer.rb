class EventSerializer < ActiveModel::Serializer
    attributes :id, :content, :conceptionDate, :year
    
    has_many :comments
  end