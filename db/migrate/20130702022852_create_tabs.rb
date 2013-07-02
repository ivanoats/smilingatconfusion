class CreateTabs < ActiveRecord::Migration
  def change
    create_table :tabs do |t|
      t.string :title
      t.text :notes
      t.text :body

      t.timestamps
    end
  end
end
