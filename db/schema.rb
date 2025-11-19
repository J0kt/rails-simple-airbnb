ActiveRecord::Schema[7.1].define(version: 2025_11_19_143404) do
  create_table "flats", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "description"
    t.integer "price_per_night"
    t.integer "number_of_guests"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture_url"
  end

end
