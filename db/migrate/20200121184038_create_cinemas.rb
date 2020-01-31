class CreateCinemas < ActiveRecord::Migration[5.0]
  def change
    create_table :cinemas do |t|
      t.string :nome
      t.string :endereco

      t.timestamps
    end
  end
end
