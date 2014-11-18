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

ActiveRecord::Schema.define(version: 20141118032207) do

  create_table "cards", force: true do |t|
    t.string   "card"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categoria", force: true do |t|
    t.string   "categoria"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fotos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "produto_id"
  end

  add_index "fotos", ["produto_id"], name: "index_fotos_on_produto_id", using: :btree

  create_table "modelos", force: true do |t|
    t.string   "modelo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produtos", force: true do |t|
    t.string   "cod"
    t.integer  "categoria_id"
    t.integer  "modelo_id"
    t.string   "tensao"
    t.integer  "potencia"
    t.string   "cor"
    t.string   "bocal"
    t.integer  "lumens"
    t.integer  "qtd_caixa"
    t.string   "descricao"
    t.decimal  "preco_unitario", precision: 10, scale: 0
    t.decimal  "preco_caixa",    precision: 10, scale: 0
    t.decimal  "preco_master",   precision: 10, scale: 0
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "produtos", ["categoria_id"], name: "index_produtos_on_categoria_id", using: :btree
  add_index "produtos", ["modelo_id"], name: "index_produtos_on_modelo_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "card_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["card_id"], name: "index_users_on_card_id", using: :btree

end
