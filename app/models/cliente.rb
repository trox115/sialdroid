class Cliente < ApplicationRecord
  belongs_to :user
  has_many :reports
end
