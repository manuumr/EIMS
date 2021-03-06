class CreatePersonelInformations < ActiveRecord::Migration
  def self.up
    create_table :personel_informations do |t|
  		t.integer :title_id
			t.integer :user_id
			t.integer :gender
			t.datetime :dob
			t.integer :age
			t.float :height
			t.float :weight
			t.string :blood_group
			t.integer :religion_id
			t.string :nationality_id
			t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :personel_informations
  end
end
