class Superhero < ApplicationRecord
  belongs_to :user
  validates :hero_name, presence: true, uniqueness: true
  validates :power, presence: true
  validates :power_level, presence: true
  validates :user_id, presence: true
end
