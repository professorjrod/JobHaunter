class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :location
      t.integer :applicants
      t.string :source
      t.boolean :remote
      t.datetime :created

      t.timestamps
    end
  end
end
