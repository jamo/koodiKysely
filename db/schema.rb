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

ActiveRecord::Schema.define(:version => 20130112213559) do

  create_table "code_question", :force => true do |t|
    t.boolean  "no_indent_a"
    t.boolean  "no_indent_b"
    t.text     "no_indent_comment"
    t.boolean  "bad_variable_names_a"
    t.boolean  "bad_variable_names_b"
    t.text     "bad_variable_names_comment"
    t.boolean  "no_air_a"
    t.boolean  "no_air_b"
    t.text     "no_air_comment"
    t.boolean  "extra_comments_a"
    t.boolean  "extra_comments_b"
    t.text     "extra_comments_comment"
    t.boolean  "bad_method_names_a"
    t.boolean  "bad_method_names_b"
    t.text     "bad_method_names_comment"
    t.boolean  "everything_in_main_a"
    t.boolean  "everything_in_main_b"
    t.text     "everything_in_main_comment"
    t.boolean  "too_complex_iffs_a"
    t.boolean  "too_complex_iffs_b"
    t.text     "too_complex_iffs_comment"
    t.boolean  "unconsistent_names_a"
    t.boolean  "unconsistent_names_b"
    t.text     "unconsistent_names_comment"
    t.boolean  "many_methods_a"
    t.boolean  "many_methods_b"
    t.text     "many_methods_comment"
    t.integer  "student_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "student_number"
    t.boolean  "programmed_before"
    t.text     "details"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
