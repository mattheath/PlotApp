class CreateBookmarks < ActiveRecord::Migration
  def change
  	create_join_table :users, :plots, table_name: :bookmarks
  end
end
