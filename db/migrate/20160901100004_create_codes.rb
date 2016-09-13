class CreateCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :codes do |t|
      t.string :language
      t.text :content
      t.integer :level

      t.timestamps
    end
  end
end
