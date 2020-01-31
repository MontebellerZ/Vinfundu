class AddListagemToFilme < ActiveRecord::Migration[5.0]
  def change
    add_column :filmes, :listagem, :string
  end
end
