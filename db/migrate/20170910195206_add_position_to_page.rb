class AddPositionToPage < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :position, :number
  end
end
