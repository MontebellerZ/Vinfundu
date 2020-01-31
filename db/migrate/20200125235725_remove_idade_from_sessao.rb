class RemoveIdadeFromSessao < ActiveRecord::Migration[5.0]
  def change
    remove_column :sessaos, :idade, :string
  end
end
