class CreateUserDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :user_details do |t|
      t.string :username
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.email :emailAddress
      t.password :password
      t.bigint :phoneno
      t.datetime :dateOfBirth
      t.integer :userrole
      t.timestamps
    end
  end
end
