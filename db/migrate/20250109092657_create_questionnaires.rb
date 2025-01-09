class CreateQuestionnaires < ActiveRecord::Migration[8.0]
  def change
    create_table :questionnaires do |t|
      t.jsonb :questions
      t.string :title

      t.timestamps
    end
  end
end
