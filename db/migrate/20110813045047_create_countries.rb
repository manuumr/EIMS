class CreateCountries < ActiveRecord::Migration
  def self.up
    create_table :countries do |t|
			t.string :name
			t.boolean :status
			t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :countries
  end
end
