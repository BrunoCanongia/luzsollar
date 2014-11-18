class AddProdutoToFotos < ActiveRecord::Migration
  def change
    add_reference :fotos, :produto, index: true
  end
end
