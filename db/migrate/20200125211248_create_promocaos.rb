class CreatePromocaos < ActiveRecord::Migration[5.0]
  def change
    create_table :promocaos do |t|
      t.string :imagem
      t.integer :cinema_id

      t.timestamps
    end
  end
end
