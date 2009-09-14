class CreateMatches < ActiveRecord::Migration
  def self.up
    create_table :matches do |t|
      t.integer :user_id
      t.integer :contender_id
      t.boolean :victory, :default => false
      t.boolean :closed,  :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :matches
  end
end
