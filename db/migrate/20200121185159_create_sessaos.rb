class CreateSessaos < ActiveRecord::Migration[5.0]
  def change
    create_table :sessaos do |t|
      t.integer :cinema_id
      t.integer :filme_id
      t.string :inicio
      t.integer :idade
      t.integer :sala
      t.string :tipo
      t.integer :cadeiras
      t.decimal :valor

      t.timestamps
    end
  end
end
