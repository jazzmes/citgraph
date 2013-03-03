class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.string :title
      t.integer :year
      t.text :notes

      t.timestamps
    end
    
    add_index :papers, :title, :unique => true
  end
end
