class CreateCatmods < ActiveRecord::Migration
  def change
    create_table :catmods do |t|
      t.references :categoria, index: true
      t.references :modelo, index: true

      t.timestamps
    end
  end
end
