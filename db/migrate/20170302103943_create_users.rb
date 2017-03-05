class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :post_username
      t.string :post_password
      t.string :post_conetents
      t.timestamps
    end
  end
end
