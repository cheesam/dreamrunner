class Review < ApplicationRecord
  belongs_to :user
  belongs_to :dream

  def rating
    (value + design + accuracy) / 3
  end

end
