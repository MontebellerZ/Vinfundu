class RemoveCinemaIdFromPromocao < ActiveRecord::Migration[5.0]
  def change
    remove_column :promocaos, :cinema_id, :string
  end
end
