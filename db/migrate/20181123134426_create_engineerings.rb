class CreateEngineerings < ActiveRecord::Migration[5.0]
  def change
    create_table :engineerings do |t|
      
      t.string :name
      t.string :discount

      t.timestamps
    end
  end
end
