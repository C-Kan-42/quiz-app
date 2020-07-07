class FixUserAnswerColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_answers, :answer_id, :quiz_id
  end
end
