class CreateEventMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :event_members do |t|
      t.integer :EventID
      t.integer :UserID
      t.string :Username
      t.text :EmailAddress
      t.bigint :PhoneNo
      t.integer :AddedBy
      t.timestamps
    end
  end
end
