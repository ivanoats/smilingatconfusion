class CreateTunings < ActiveRecord::Migration
  def change
    create_table :tunings do |t|
      t.string :name
      t.string :notes

      t.timestamps
    end
  end
end
