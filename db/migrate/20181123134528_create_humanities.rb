class CreateHumanities < ActiveRecord::Migration[5.0]
  def change
    create_table :humanities do |t|
      
      t.string :name
      t.string :discount

      t.timestamps
    end
  end
end
