class AddScoreToScores < ActiveRecord::Migration[5.2]
  def change
    add_column :scores, :score, :integer
  end
end
