class Dream < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :sleeps, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
