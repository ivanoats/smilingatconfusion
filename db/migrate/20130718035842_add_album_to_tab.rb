class AddAlbumToTab < ActiveRecord::Migration
  def change
    add_reference :tabs, :album, index: true
  end
end
