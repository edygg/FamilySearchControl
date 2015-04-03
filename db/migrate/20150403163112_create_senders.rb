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
      t.belongs_to :user
      
      t.timestamps
    end
    
    # Indexes
    add_index(:senders, [:lds_user], unique: true)
    add_index(:senders, [:nim], unique: true)
    add_index(:senders, [:user_id])
  end
end
