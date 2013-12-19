class ChangeArtsTable < ActiveRecord::Migration
  def change
    rename_column :arts, :type_id, :art_type_id
  end

end
