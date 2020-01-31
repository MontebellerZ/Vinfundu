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

ActiveRecord::Schema.define(version: 20200127221313) do

  create_table "bombonieres", force: :cascade do |t|
    t.string   "produto"
    t.decimal  "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "imagem"
    t.boolean  "limitado"
  end

  create_table "cinemas", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.bigint   "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "filmes", force: :cascade do |t|
    t.string   "nome"
    t.string   "tipo"
    t.string   "duracao"
    t.string   "diretor"
    t.string   "elenco"
    t.string   "nacionalidade"
    t.text     "sinopse"
    t.string   "trailer"
    t.string   "cartaz"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "listagem"
  end

  create_table "indicacaos", force: :cascade do |t|
    t.string   "nome"
    t.string   "tipo"
    t.string   "duracao"
    t.string   "diretor"
    t.string   "elenco"
    t.string   "nacionalidade"
    t.text     "sinopse"
    t.string   "trailer"
    t.string   "cartaz"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "ingressos", force: :cascade do |t|
    t.integer  "sessao_id"
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "cliente"
  end

  create_table "promocaos", force: :cascade do |t|
    t.string   "imagem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reclamacaos", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.integer  "cinema_id"
    t.text     "mensagem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessaos", force: :cascade do |t|
    t.integer  "cinema_id"
    t.integer  "filme_id"
    t.string   "inicio"
    t.integer  "sala"
    t.string   "tipo"
    t.integer  "cadeiras"
    t.decimal  "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
