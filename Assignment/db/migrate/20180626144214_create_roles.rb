class CreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :roles do |t|
      t.integer :roleId
      t.text :roleName
      t.timestamps
    end
  end
end
