require('sinatra')
require('sinatra/reloader')

get('/') do
  @friend = "Asia"
  erb(:letter)
end

get('/favorite_photos') do
  erb(:favorite_photos)
end

get('/form') do
  erb(:form)
end

get('/greeting_card') do
  @person1 = params.fetch('person1')
  @person2 = params.fetch('person2')
  erb(:greeting_card)
end
