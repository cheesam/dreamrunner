class Dream < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :sleeps, dependent: :destroy
  mount_uploader :photo, PhotoUploader

  include PgSearch
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
