class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :team_id, null: false
      t.datetime :date_created, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :date_updated, default: -> { 'CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP' }
    end
    add_index :users, :name, unique: true
    add_index :users, [:name, :team_id], unique: true
  end
end
