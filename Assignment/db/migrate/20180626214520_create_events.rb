class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :EventID
      t.string :EventName
      t.datetime :EventDate
      t.string :EventLocation
      t.text :EventAddress
      t.text :EventDescription
      t.integer :UserID
      t.timestamps
    end
  end
end
