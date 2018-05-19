class User < ApplicationRecord
  has_many :events, foreign_key: :owner_id
  has_many :event_attendants, foreign_key: :attendant_id
  has_many :attendances, through: :event_attendants, source: :event

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
