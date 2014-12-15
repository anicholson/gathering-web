
require 'sqlite3'
require 'lotus/model'
require 'lotus/model/adapters/sql_adapter'


SQLAdapter = Lotus::Model::Adapters::SqlAdapter.new(
    Mappers::GatheringMapper,
    {
      adapter: 'sqlite',
      database: ':memory:'
    }
)

Mutex.new.synchronize do
  Mappers::GatheringMapper.load!
end