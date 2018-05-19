class Event < ApplicationRecord
  belongs_to :owner, class_name: 'User'

  has_many :event_attendants
  has_many :attendants, through: :event_attendants, source: :attendant

  def owned_by?(user)
    owner == user
  end

  def attended_by?(user)
    attendants.exists?(user.id)
  end
end
