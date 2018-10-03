class CreateAssistants < ActiveRecord::Migration
  def change
    create_table :assistants do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :image_name
      t.integer :task_ammount

      t.timestamps null: false
    end
  end
end
