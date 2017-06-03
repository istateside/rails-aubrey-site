class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :permalink
      t.string :name
      t.text :description
      t.integer :position

      t.timestamps
    end
    add_index :projects, :permalink, unique: true
  end
end
