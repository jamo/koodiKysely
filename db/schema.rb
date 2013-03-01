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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130301220630) do

  create_table "code_questions", :force => true do |t|
    t.string   "no_indent"
    t.text     "no_indent_comment"
    t.string   "bad_variable_names"
    t.text     "bad_variable_names_comment"
    t.string   "no_air"
    t.text     "no_air_comment"
    t.string   "extra_comments"
    t.text     "extra_comments_comment"
    t.string   "bad_method_names"
    t.text     "bad_method_names_comment"
    t.string   "everything_in_main"
    t.text     "everything_in_main_comment"
    t.string   "too_complex_iffs"
    t.text     "too_complex_iffs_comment"
    t.string   "unconsistent_names"
    t.text     "unconsistent_names_comment"
    t.integer  "student_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "english_mooc_participants", :force => true do |t|
    t.string   "student_number"
    t.boolean  "programmed_before"
    t.text     "details"
    t.string   "gender"
    t.string   "language"
    t.string   "year"
    t.integer  "hours",             :default => -1
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "nationality"
    t.string   "native_language"
    t.text     "request"
    t.string   "ip"
  end

  create_table "english_moocs", :force => true do |t|
    t.string   "yksi"
    t.string   "kaksi"
    t.string   "kolme"
    t.string   "nelja"
    t.string   "viisi"
    t.string   "kuusi"
    t.string   "seitseman"
    t.string   "kahdeksan"
    t.string   "yhdekan"
    t.string   "kymmenen"
    t.integer  "english_mooc_participant_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "student_number"
    t.boolean  "programmed_before"
    t.text     "details"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "gender"
    t.string   "language"
    t.integer  "year"
    t.integer  "hours",             :default => -1
  end

end
