class CreateSurveyUsers < ActiveRecord::Migration
  def change
		create_table :survey_users do |t|
			t.integer :user_id
			t.integer :survey_id
			t.timestamps
		end
  end
end
