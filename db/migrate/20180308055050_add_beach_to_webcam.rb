class AddBeachToWebcam < ActiveRecord::Migration[5.1]
  def change
    add_reference :webcams, :beach, foreign_key: true
  end
end
