class AddLimitadoToBomboniere < ActiveRecord::Migration[5.0]
  def change
    add_column :bombonieres, :limitado, :boolean
  end
end
