class Vehicle < ActiveRecord::Base
  validates :year, presence: true

  has_many :mpg_submissions

  MPG_SUBMISSIONS_NEEDED = 10

  def average_mpg
    if mpg_submissions.count >= MPG_SUBMISSIONS_NEEDED
      mpg_submissions.average(:mpg)
    else
      nil
    end
  end
end
