class CreateUserAnswers < ActiveRecord::Migration
  def change
		create_table :user_answers do |t|
			t.integer :survey_id
			t.integer :user_id
			t.timeestamps
		end
  end
end
