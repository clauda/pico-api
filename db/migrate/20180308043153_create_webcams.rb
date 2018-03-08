class CreateWebcams < ActiveRecord::Migration[5.1]
  def change
    create_table :webcams do |t|
      t.string :name
      t.text :description
      t.string :short_name
      t.boolean :published, default: true
      t.integer :views_counter, default: 0
      t.decimal :latitude
      t.decimal :longitude
      t.string :code
      t.string :slug

      t.timestamps
    end
  end
end
