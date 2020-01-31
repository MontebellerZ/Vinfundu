class RemoveClienteIdFromIngresso < ActiveRecord::Migration[5.0]
  def change
    remove_column :ingressos, :cliente_id, :string
  end
end
