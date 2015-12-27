# MEMO (how to create user/db/table in postgresql from terminal)
# $ createuser --help #=> see options
# $ createdb --help   #=> see options
# $ pg_ctl start -D /usr/local/var/postgres
# $ psql -U user_name -d db_name
# db_name=> CREATE TABLE movies(id int PRIMARY KEY NOT NULL, title varchar(40));
# db_name=> \d movies #=> displays columns

require 'pry'
require 'pg'

class Entity
  attr_reader :table, :ident
  DB = PG.connect( dbname: 'meta_programming' )

  def initialize(table, ident)
    @table = table
    @ident = ident
    DB.exec( "INSERT INTO #{@table} (id) VALUES (#{@ident})")
  end

  def set(col, val)
    DB.exec( "UPDATE #{@table} SET #{col}='#{val}' WHERE id=#{@ident}")
  end

  def get(col)
    DB.exec(("SELECT #{col} FROM #{table} WHERE id=#{@ident}")[0][0])
  end
end

class Movie < Entity
  def initialize(ident)
    super 'movies', ident
  end

  def title
    get 'title'
  end

  def title=(value)
    set 'title', value
  end

  def director
    get 'director'
  end

  def director=(value)
    set 'director', value
  end
end
binding.pry

# Try
# movie = Movie.new 1
# movie.title = 'something'
# movie.director = 'someone'
