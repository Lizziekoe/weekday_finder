require'sinatra'
require'sinatra/reloader'
require'./lib/weekday_finder'

get('/') do
  erb(:home)
end

get('/results') do
  @word = params.fetch("date").weekday_finder()
  @date = params.fetch("date")
  erb(:results)
end
