class ChangeEncounterIdsToInts < ActiveRecord::Migration
  def change
    create_table "encounters", force: :cascade do |t|
      t.integer   "defender_id"
      t.integer   "attacker_id"
      t.string   "expires"
      t.string   "tier"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string   "location"
    end
  end
end
