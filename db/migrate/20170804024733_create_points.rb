class CreatePoints < ActiveRecord::Migration[5.0]
  def change
    create_table :points do |t|
      t.integer :user_id, null: false
      t.integer :points, null: false
      t.string :reason
      t.datetime :date_created, default: -> { 'CURRENT_TIMESTAMP' }
    end
    add_index :points, :user_id
  end
end
