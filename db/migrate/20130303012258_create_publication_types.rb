class CreatePublicationTypes < ActiveRecord::Migration
  def change
    create_table :publication_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
