class CreateIngressos < ActiveRecord::Migration[5.0]
  def change
    create_table :ingressos do |t|
      t.integer :sessao_id
      t.integer :cliente_id
      t.string :tipo

      t.timestamps
    end
  end
end
