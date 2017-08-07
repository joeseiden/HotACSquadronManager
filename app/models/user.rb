class User < ApplicationRecord
  has_secure_password

  has_many :campaigns,
    class_name: :Campaign,
    foreign_key: :squad_leader_id,
    primay_key: :id,
    inverse_of: :squad_leader,
    dependent: :destroy

  has_many :pilots,
    class_name: :Pilot,
    foreign_key: :user_id,
    primay_key: :id,
    inverse_of: :player,
    dependent: :destroy
end
