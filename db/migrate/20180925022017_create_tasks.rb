class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :email
      t.string :title
      t.string :category
      t.text :content
      t.time :working_hours
      t.date :viewing_period
      t.integer :assistant_id

      t.timestamps null: false
    end
  end
end
