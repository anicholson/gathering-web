require 'database'

Database.setup!

Gathering::REPOSITORIES.each do |repo|
  repo.adapter = Database.adapter
end

