class Event < ApplicationRecord
    has_many :AddEventToUsers
    has_many :users, through: :AddEventToUsers
    has_many :comments
end
