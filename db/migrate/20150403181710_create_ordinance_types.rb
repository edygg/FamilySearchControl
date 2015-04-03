class CreateOrdinanceTypes < ActiveRecord::Migration
  def change
    create_table :ordinance_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
