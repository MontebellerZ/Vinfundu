class AddClienteToIngresso < ActiveRecord::Migration[5.0]
  def change
    add_column :ingressos, :cliente, :string
  end
end
