class Activity < ApplicationRecord
    has_many :signups, dependent: :destroy
    has_many :campers, through: :signups

    def self.ranked
        sorted=self.all.sort_by(&:difficulty)
        render json: sorted
    end
 
end
