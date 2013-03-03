class AddFieldToPublications < ActiveRecord::Migration
  def change
    change_table :publications do |t|
      t.string :shortname
    end
  end
end
