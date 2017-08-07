class Campaign < ApplicationRecord
  validates :squad_name, :squad_leader, presence: true

  belongs_to :squad_leader
    class_name: :User,
    foreign_key: :squad_leader_id,
    inverse_of: :campaigns

  has_many :pilots
end
