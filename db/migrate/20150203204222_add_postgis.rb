class AddPostgis < ActiveRecord::Migration
  def up
    execute "CREATE EXTENSION IF NOT EXISTS postgis;"
  end

  def down
    execute "DROP EXTENSION postgis;"
  end
end
