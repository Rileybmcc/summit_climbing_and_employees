class Instructor < ApplicationRecord
  belongs_to :gym

  # def self.gym_name_by_gym_id(ids)
  #   # Gym.where(id: self.where(id: ids).pluck(:gym_id))
  #   #       .pluck(:name)
  # end



end
