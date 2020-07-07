class AddScoreToUserAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :user_answers, :score, :integer

  end
end
