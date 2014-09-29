class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string      :name
      t.string      :notes

      t.timestamps
    end

    add_index :tasks, :name
  end
end
