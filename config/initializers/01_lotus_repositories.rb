require 'pg'
require 'lotus/model'
require 'lotus/model/adapters/sql_adapter'


DB_PATH = ENV['DATABASE_URL'] || "postgres://localhost:5432/gathering_#{Rails.env}"

SQLAdapter = Lotus::Model::Adapters::SqlAdapter.new(
    Mappers::GatheringMapper,
    {
      adapter: 'postgres',
      database: DB_PATH
    }
)


Gathering::REPOSITORIES.each do |repo|
  repo.adapter = SQLAdapter
end

Mutex.new.synchronize do
  Mappers::GatheringMapper.load!
end