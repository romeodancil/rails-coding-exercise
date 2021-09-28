class CreateCriteria < ActiveRecord::Migration[6.1]
  def change
    create_table :criteria do |t|
      t.text :distination
      t.string :criteria

      t.timestamps
    end
  end
end
