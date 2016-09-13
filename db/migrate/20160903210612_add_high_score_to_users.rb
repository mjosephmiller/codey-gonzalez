class AddHighScoreToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :high_score, :integer
  end
end
