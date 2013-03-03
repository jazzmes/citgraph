class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :surname
      t.string :given_name

      t.timestamps
    end
  end
end
