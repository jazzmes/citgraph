class AddForeignKeyPublicationToPapers < ActiveRecord::Migration
  def change
    change_table :papers do |t|
      t.references :publication      
    end
    
    add_index :papers, :publication_id
  end
end
