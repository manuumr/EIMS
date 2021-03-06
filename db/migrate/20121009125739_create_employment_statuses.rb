class CreateEmploymentStatuses < ActiveRecord::Migration
  def self.up
    create_table :employment_statuses do |t|
      t.string :name
      t.boolean:status
      t.integer :stage,:uniqueness => true
      t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :employment_statuses
  end
end
