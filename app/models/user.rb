class User < ActiveRecord::Base
  has_secure_password
  has_many :surveys
  has_many :user_answers
  has_many :survey_users
  has_many :completed_surveys, through: :survey_users, source: :completed_survey, class_name: "Survey"
end
