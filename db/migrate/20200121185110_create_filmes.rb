class CreateFilmes < ActiveRecord::Migration[5.0]
  def change
    create_table :filmes do |t|
      t.string :nome
      t.string :tipo
      t.string :duracao
      t.string :diretor
      t.string :elenco
      t.string :nacionalidade
      t.text :sinopse
      t.string :trailer
      t.string :cartaz

      t.timestamps
    end
  end
end
