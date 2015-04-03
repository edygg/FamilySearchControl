class CreateAncestors < ActiveRecord::Migration
  def change
    create_table :ancestors do |t|
      t.string :names
      t.string :last_names
      t.belongs_to :user
      t.belongs_to :sender

      t.timestamps
    end
  end
end
