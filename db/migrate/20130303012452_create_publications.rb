class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :name
      t.references :publication_type

      t.timestamps
    end
    add_index :publications, :publication_type_id
  end
end
