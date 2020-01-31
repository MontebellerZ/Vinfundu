class RemoveCinemaIdFromBomboniere < ActiveRecord::Migration[5.0]
  def change
    remove_column :bombonieres, :cinema_id, :string
  end
end
