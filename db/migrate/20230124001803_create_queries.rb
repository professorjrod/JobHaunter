class CreateQueries < ActiveRecord::Migration[7.0]
  def change
    create_table :queries do |t|
      t.string :query
      t.string :location
      t.integer :age

      t.timestamps
    end
  end
end
