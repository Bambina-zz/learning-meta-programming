require 'pg'
require 'yaml'
require 'active_record'
require 'pry'

ActiveRecord::Base.configurations = YAML.load_file('database.yml')
ActiveRecord::Base.establish_connection(:dev)

class Movie < ActiveRecord::Base
end

binding.pry
# Try
# movie = Movie.new
# movie.title = 'something'
# movie.director = 'someone'
