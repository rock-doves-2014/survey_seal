class Survey < ActiveRecord::Base
  has_many :questions
  belongs_to :user
  has_many :users, through: :survey_users
end
