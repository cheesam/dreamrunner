class Dream < ApplicationRecord
  belongs_to :user
  has_many :sleeps, dependent: :destroy
end
