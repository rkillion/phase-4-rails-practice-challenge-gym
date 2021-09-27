class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client

  validates :charge, presence: true
  validates :client_id, uniqueness: {scope: :gym_id, message: "may not have more than one membership to the same gym."}
end
