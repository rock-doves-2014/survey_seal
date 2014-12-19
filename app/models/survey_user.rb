class SurveyUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :completed_survey, class_name: 'Survey', foreign_key: :survey_id
  # has_many :completed_surveys, class_name: "Survey", source: :Survey
end
