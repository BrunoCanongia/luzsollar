class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :cod
      t.references :categoria, index: true
      t.references :modelo, index: true
      t.string :tensao
      t.integer :potencia
      t.string :cor
      t.string :bocal
      t.integer :lumens
      t.integer :qtd_caixa
      t.string :descricao
      t.decimal :preco_unitario
      t.decimal :preco_caixa
      t.decimal :preco_master
      t.integer :parent_id

      t.timestamps
    end
  end
end