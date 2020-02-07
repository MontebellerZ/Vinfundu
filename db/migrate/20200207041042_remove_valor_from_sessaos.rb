class RemoveValorFromSessaos < ActiveRecord::Migration[5.0]
  def change
    remove_column :sessaos, :valor, :string
  end
end
