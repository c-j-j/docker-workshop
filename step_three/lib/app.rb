require 'sinatra'
require "redis"

set :bind, '0.0.0.0'

get '/' do
  redis = Redis.new(:host => "CHANGE_ME")

  next_count = get_count(redis) + 1
  set_next_count(redis, next_count)

  "Number of website hits: #{next_count}!"
end

def get_count(redis)
  Integer(redis.get("counter") || 0)
end

def set_next_count(redis, next_count)
  redis.set("counter", next_count )
end
