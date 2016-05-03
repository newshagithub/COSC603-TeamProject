# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160503171855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.integer  "progress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lectures", force: :cascade do |t|
    t.string   "name"
    t.text     "reading"
    t.text     "quizQuestions"
    t.text     "quizAnswers"
    t.integer  "lesson_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "lectures", ["lesson_id"], name: "index_lectures_on_lesson_id", using: :btree

  create_table "lessons", force: :cascade do |t|
    t.string   "name"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lessons", ["course_id"], name: "index_lessons_on_course_id", using: :btree

  create_table "progresses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.integer  "lesson_id"
    t.integer  "lecture_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "progresses", ["course_id"], name: "index_progresses_on_course_id", using: :btree
  add_index "progresses", ["lecture_id"], name: "index_progresses_on_lecture_id", using: :btree
  add_index "progresses", ["lesson_id"], name: "index_progresses_on_lesson_id", using: :btree
  add_index "progresses", ["user_id"], name: "index_progresses_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "lectures", "lessons"
  add_foreign_key "lessons", "courses"
  add_foreign_key "progresses", "courses"
  add_foreign_key "progresses", "lectures"
  add_foreign_key "progresses", "lessons"
  add_foreign_key "progresses", "users"
end
