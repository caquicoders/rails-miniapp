class Event < ApplicationRecord
  belongs_to :owner, class_name: 'User'

  def owned_by?(user)
    owner == user
  end
end
