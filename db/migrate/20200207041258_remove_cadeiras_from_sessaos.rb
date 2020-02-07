class RemoveCadeirasFromSessaos < ActiveRecord::Migration[5.0]
  def change
    remove_column :sessaos, :cadeiras, :string
  end
end
