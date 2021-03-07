require 'sinatra'

inventions = [
    {:invention => "High-pressure piston steam engine", :inventor => "Jacob Leupold", :year => 1720},
    {:invention => "Electrical defibrillator", :inventor => "Dr. Albert Hyman", :year => 1933},
    {:invention => "Ball bearing", :inventor => "Philip Vaughan", :year => 1794},
]

get '/' do
    "<h1>Welcome to the list of significant inventions</h1>"
end

get '/inventions' do
    @inventions = inventions
    erb :inventions
end

get '/newInvention' do
    erb :new_invention
end

post '/addNewInvention' do
    # "<h2>#{params}</h2>"
    inventions.push(params)
    redirect to ('/inventions')
end

get '/editInvention' do
    "<h1>Edit invention</h1>"
end

get '/deleteInvention' do
    "<h1>Delete invention</h1>"
end