class Dist < ApplicationRecord
  has_many :talukas
  belongs_to :state
end
