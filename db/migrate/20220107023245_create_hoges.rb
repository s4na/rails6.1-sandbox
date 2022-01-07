class CreateHoges < ActiveRecord::Migration[6.1]
  def change
    create_table :hoges do |t|
      t.string :name

      t.timestamps
    end
  end
end
