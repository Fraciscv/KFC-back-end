class User < ApplicationRecord
    has_many :AddEventToUsers
    has_many :events, through: :AddEventToUser
    has_many :comments
end
