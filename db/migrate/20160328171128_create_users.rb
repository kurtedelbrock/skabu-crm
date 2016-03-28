class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, limit: 254

      t.timestamps null: false
    end
  end
end
