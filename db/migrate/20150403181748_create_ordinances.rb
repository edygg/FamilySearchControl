class CreateOrdinances < ActiveRecord::Migration
  def change
    create_table :ordinances do |t|
      t.date :performed_in
      t.belongs_to :ancestor
      t.belongs_to :ordinance_type
      
      t.timestamps
    end
    
    # Indexes
    add_index(:ordinances, [:ancestor_id, :ordinance_type_id], unique: true)
  end
end
