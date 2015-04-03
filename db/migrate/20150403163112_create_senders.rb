class CreateSenders < ActiveRecord::Migration
  def change
    create_table :senders do |t|
      t.string :names
      t.string :last_names
      t.string :phone
      t.string :nim
      t.string :lds_user
      t.string :lds_password
      t.boolean :adult
      t.boolean :young

      t.timestamps
    end
  end
end
