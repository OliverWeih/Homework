class CreateDbroutes < ActiveRecord::Migration
  def self.up
    create_table :dbroutes do |t|
      t.string :start
      t.string :ziel
      t.integer :strecke

      t.timestamps
    end
  end

  def self.down
    drop_table :dbroutes
  end
end
