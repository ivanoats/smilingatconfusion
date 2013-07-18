class AddArtistAndTuningToTab < ActiveRecord::Migration
  def change
    add_reference :tabs, :artist, index: true
    add_reference :tabs, :tuning, index: true
  end
end
