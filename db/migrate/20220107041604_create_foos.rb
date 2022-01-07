class CreateFoos < ActiveRecord::Migration[6.1]
  def change
    create_table :foos do |t|
      t.string :name
      t.integer :hoge_id

      t.timestamps
    end
  end
end
