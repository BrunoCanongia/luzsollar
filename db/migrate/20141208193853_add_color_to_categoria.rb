class AddColorToCategoria < ActiveRecord::Migration
  def change
    add_column :categoria, :color, :string
  end
end
