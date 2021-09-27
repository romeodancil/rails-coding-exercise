class CreateCriterias < ActiveRecord::Migration[6.1]
  def change
    create_table :criterias do |t|
      t.string :distination
      t.string :criteria
      t.timestamps
    end
  end
end
