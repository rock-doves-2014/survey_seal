class SurveyUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :completed_surveys, class_name: "Survey", foreign_key: :survey_id
end
