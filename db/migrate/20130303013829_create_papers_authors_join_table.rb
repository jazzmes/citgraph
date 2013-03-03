class CreatePapersAuthorsJoinTable < ActiveRecord::Migration
  def up
    create_table :authors_papers, :id => false do |t|
      t.integer :paper_id
      t.integer :author_id
    end

    add_index :authors_papers, [:paper_id, :author_id]
  end

  def down
    drop_table :authors_papers
  end
end
