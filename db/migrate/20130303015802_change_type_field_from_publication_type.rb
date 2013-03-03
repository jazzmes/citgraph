class ChangeTypeFieldFromPublicationType < ActiveRecord::Migration
  def up
    rename_column :publication_types, :type, :name
  end

  def down
    rename_column :publication_types, :name, :type
  end
end
