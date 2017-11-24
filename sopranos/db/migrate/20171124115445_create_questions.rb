class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :description
      t.integer :victim_id
      t.integer :killer_id
      t.string :video

      t.timestamps
    end
  end
end
