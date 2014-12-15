require 'pg'
require 'lotus/model'
require 'lotus/model/adapters/sql_adapter'


class Database
  DB_PATH = ENV['DATABASE_URL'] || "postgres://localhost/gathering_#{Rails.env}?user=andy"

  class << self
    def adapter
      Lotus::Model::Adapters::SqlAdapter.new(
        Mappers::GatheringMapper,
        {
          adapter: 'postgres',
          database: "gathering_#{Rails.env}"
        }
      )
    end

    def setup!
      migrate_database! and finalize_mappers!
    end

    private

    def migrate_database!
      Sequel.extension :migration

      # MOTHER OF ALL HACKINESS PLEASE FIX THIS LOTUS
      db = Sequel.connect DB_PATH
      Sequel::Migrator.run(db, Rails.root.join('db', 'migrations'))
    end

    def finalize_mappers!
      Mutex.new.synchronize do
        Mappers::GatheringMapper.load!
      end
    end
  end
end
