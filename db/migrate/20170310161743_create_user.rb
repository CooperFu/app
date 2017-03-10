class CreateUser < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.string :category
      t.string :email
      t.string :wechat
      t.integer :phone
      t.timestamps
    end
  end
end
