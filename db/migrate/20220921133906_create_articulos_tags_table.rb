class CreateArticulosTagsTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :articulos, :tags
  end
end
