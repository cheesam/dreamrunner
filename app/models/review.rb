class Review < ApplicationRecord
  belongs_to :user
  belongs_to :dream
  validates :accuracy, inclusion: { in: 0..10 } #message: "Please give put a score from 0-10"
  validates :design, inclusion: { in: 0..10 } #message: "Please give put a score from 0-10"
  validates :value, inclusion: { in: 0..10 } #message: "Please give put a score from 0-10"

  def rating
    (value + design + accuracy) / 3
  end

end
