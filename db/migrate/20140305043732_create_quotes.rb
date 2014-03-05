class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :email
      t.string :organization
      t.string :description

      t.timestamps
    end
  end
end
