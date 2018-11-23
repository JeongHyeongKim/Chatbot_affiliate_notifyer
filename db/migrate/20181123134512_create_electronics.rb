class CreateElectronics < ActiveRecord::Migration[5.0]
  def change
    create_table :electronics do |t|
      
      t.string :name
      t.string :discount

      t.timestamps
    end
  end
end
