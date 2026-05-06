# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2026_05_06_202904) do
  create_table "photos", force: :cascade do |t|
    t.integer "photo_id"
    t.integer "width"
    t.integer "height"
    t.string "url"
    t.string "photographer"
    t.string "photographer_url"
    t.integer "photographer_id"
    t.string "avg_color"
    t.text "src_original"
    t.text "src_large2x"
    t.text "src_large"
    t.text "src_medium"
    t.text "src_small"
    t.text "src_portrait"
    t.text "src_landscape"
    t.text "src_tiny"
    t.text "alt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
