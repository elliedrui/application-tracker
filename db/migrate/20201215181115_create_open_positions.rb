class CreateOpenPositions < ActiveRecord::Migration[6.0]
  def change
    create_table :open_positions do |t|
      t.string :title
      t.string :url
      t.string :compensation
      t.boolean :remote
      t.string :status
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
