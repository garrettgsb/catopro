class AddUsersCatosEncountersInitial < ActiveRecord::Migration
  def change
    create_table "users" do |t|
      t.string "username"
      t.string "password"
      t.timestamps null: false
    end #create_table "users"

    create_table "catos" do |t|
      add_foreign_key :users
      t.string "starts"
      t.string "ends"
      t.timestamps null: false
    end #create_table "catos"

    create_table "encounters" do |t|
      t.string "user"
      t.string "cato"
      t.string "expires"
      t.string "tier"
      t.timestamps null: false
      #TODO: Add timeframe stuff
    end #create_table "encounters"

  end
end
