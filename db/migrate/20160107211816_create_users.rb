class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :password

      t.timestamps null: false
    end
  end
end
