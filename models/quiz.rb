ActiveRecord::Base.establish_connection(
  ENV['DATABASE_URL']||'sqlite3:db/development.db')

class User < ActiveRecord::Base
    has_many :contests
    has_many :problems
end

class Contest < ActiveRecord::Base
    belongs_to :user
end

class Problem < ActiveRecord::Base
    belongs_to :user
end
