class CreateBombonieres < ActiveRecord::Migration[5.0]
  def change
    create_table :bombonieres do |t|
      t.integer :cinema_id
      t.string :produto
      t.decimal :valor

      t.timestamps
    end
  end
end
