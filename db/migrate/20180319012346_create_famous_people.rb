class CreateFamousPeople < ActiveRecord::Migration[5.2]
  def change
    create_table :famous_people do |t|
      t.string :name
      t.string :hometown

      t.timestamps
    end
  end
end
