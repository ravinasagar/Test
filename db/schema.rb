# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180508092256) do

  create_table "bookings", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "purchased_at"
  end

  create_table "carts", force: :cascade do |t|
    t.string "total_amount_cents"
    t.string "purchased_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coffee_roasts", force: :cascade do |t|
    t.string "roast_name"
    t.text "roast_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "post_id"
    t.integer "user_id"
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.string "likeable_type"
    t.integer "likeable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["likeable_type", "likeable_id"], name: "index_likes_on_likeable_type_and_likeable_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
    t.index ["email"], name: "index_members_on_email", unique: true
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true
  end

  create_table "orders", force: :cascade do |t|
    t.integer "cart_id"
    t.string "express_token"
    t.string "express_payer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "card_expires_on"
    t.string "card_type"
    t.string "card_number"
    t.index ["cart_id"], name: "index_orders_on_cart_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "post"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.integer "booking_id"
    t.string "ip"
    t.string "express_token"
    t.string "express_payer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["booking_id"], name: "index_products_on_booking_id"
  end

  create_table "registration_transactions", force: :cascade do |t|
    t.string "action"
    t.integer "amount"
    t.boolean "success"
    t.string "authorization"
    t.string "message"
    t.text "params"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "registration_id"
    t.index ["registration_id"], name: "index_registration_transactions_on_registration_id"
  end

  create_table "registrations", force: :cascade do |t|
    t.string "student_name"
    t.string "course"
    t.string "new"
    t.string "ip_address"
    t.string "first_name"
    t.string "last_name"
    t.string "card_type"
    t.date "card_expires_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cart_id"
    t.index ["cart_id"], name: "index_registrations_on_cart_id"
  end

  create_table "uploaders", force: :cascade do |t|
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
