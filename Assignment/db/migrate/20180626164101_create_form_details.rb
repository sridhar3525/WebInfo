class CreateFormDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :form_details do |t|

      t.timestamps
    end
  end
end
