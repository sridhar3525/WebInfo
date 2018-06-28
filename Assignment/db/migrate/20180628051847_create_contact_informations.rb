class CreateContactInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_informations do |t|
      t.integer :ContactID
      t.text  :Message
      t.integer :UserId
      t.timestamps
    end
  end
end
