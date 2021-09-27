class Client < ApplicationRecord
    has_many :memberships, dependent: :destroy
    has_many :gyms, through: :memberships

    validates :name, presence: true

    def total_memberships_cost
        memberships.sum(:charge)
    end
    
end
