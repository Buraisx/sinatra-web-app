require 'sinatra'

get '/' do
	redirect to('/home')
end
get	'/home' do
	erb :index
end
get '/gallery' do
	redirect to('/portfolio')
end
get '/portfolio' do
	erb :gallery
end

get '/about' do
	@skills = ['git','html','css','ruby']
	@interests = ['cats','art','music','films','coffee']
	erb :about
end

get '/favourites' do
	@fav_links = ['//www.reddit.com', '//www.google.ca', '//www.netflix.ca', '//www.yahoo.ca', '//www.amazon.com']

	erb :favourites	
end