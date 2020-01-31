class AddImagemToBombonieres < ActiveRecord::Migration[5.0]
  def change
    add_column :bombonieres, :imagem, :string
  end
end
