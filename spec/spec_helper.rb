$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

# Development Dep
require "pry"

# Spec Dependencies
require "active_record"

# Gem core
require "randomizer"

def sqlite_config
  {
    adapter: "sqlite3",
    database: "randomizer_gem_test.sqlite3",
    pool: 5,
    timeout: 5000
  }
end

ActiveRecord::Base.establish_connection(sqlite_config)

puts "** Loading schema for SQLite"
schema_file = File.dirname(__FILE__) + "/schema.rb"
load(schema_file) if File.exist?(schema_file)
