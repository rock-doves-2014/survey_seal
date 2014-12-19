class CreateSurveys < ActiveRecord::Migration
  def change
		create_table :surveys do |t|
			t.string :title
			t.datetime :done_date
			t.integer :user_id
			t.timestamps
		end
  end
end
