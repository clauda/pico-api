class CreateBeaches < ActiveRecord::Migration[5.1]
  def change
    create_table :beaches do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :slug
      t.boolean :published, default: true

      t.timestamps
    end
  end
end
