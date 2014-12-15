require 'gathering'
require 'lotus/model'

module Mappers
  GatheringMapper = Lotus::Model::Mapper.new do
    collection :gatherings do
      entity Gathering::Gathering

      attribute :id,   Integer
      attribute :name, String
      attribute :time, String

    end

    collection :occasions do
      entity Gathering::Occasion

      attribute :id,   Integer
      attribute :gathering_id, Integer
      attribute :date, Date
    end

    collection :roles do
      entity Gathering::Role

      attribute :id,   Integer
      attribute :name, String
      attribute :team, Boolean
    end

    collection :people do
      entity Gathering::Person

      attribute :id,   Integer
      attribute :name,           String
      attribute :contact_number, String
    end

    collection :teams do
      entity Gathering::Team

      attribute :id,   Integer
      attribute :name, String
    end
  end
end

