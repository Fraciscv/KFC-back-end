class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event

  def tag_name
    self.tag.name
  end
  
end
