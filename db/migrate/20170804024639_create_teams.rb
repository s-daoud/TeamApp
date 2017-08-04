class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.datetime :date_created, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :date_updated, default: -> { 'CURRENT_TIMESTAMP' }
    end
    add_index :teams, :name, unique: true
  end
end
