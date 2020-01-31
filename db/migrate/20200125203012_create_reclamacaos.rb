class CreateReclamacaos < ActiveRecord::Migration[5.0]
  def change
    create_table :reclamacaos do |t|
      t.string :nome
      t.string :email
      t.integer :cinema_id
      t.text :mensagem

      t.timestamps
    end
  end
end
