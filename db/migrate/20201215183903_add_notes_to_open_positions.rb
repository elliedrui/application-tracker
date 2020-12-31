class AddNotesToOpenPositions < ActiveRecord::Migration[6.0]
  def change
    add_column :open_positions, :notes, :text
  end
end
