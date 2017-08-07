class Pilot < ApplicationRecord
  validates :callsign, :pilot_skill, :player, :campaign, presence: true

  belongs_to :player,
    class_name :User,
    foreign_key :user_id

  belongs_to :campaign
end
