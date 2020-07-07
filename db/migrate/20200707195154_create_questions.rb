class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :title
      t.integer :quiz_id

      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
