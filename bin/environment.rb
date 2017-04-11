require 'bundler/setup'
require 'base64'

Bundler.require
# require 'sqlite3'

require_relative '../lib/querying.rb'
require_relative 'sql_runner'

@db = SQLite3::Database.new('../books.db')
@db.execute("DROP TABLE IF EXISTS books;")
@db.execute("DROP TABLE IF EXISTS subgenres;")
@db.execute("DROP TABLE IF EXISTS series;")
@db.execute("DROP TABLE IF EXISTS authors;")
@db.execute("DROP TABLE IF EXISTS characters;")
@sql_runner = SQLRunner.new(@db)
@sql_runner.execute_schema_sql
