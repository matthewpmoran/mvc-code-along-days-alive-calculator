require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  #link to results page
  get '/results' do
    erb :results
  end
  
  #post route
  post "/sendBirthday" do
    #Create variable for userBirthday and set equal to userBirthday param hash from index.erb
    userBirthday = params[:userBirthday]
    #Create instance variable for daysAlive, set equal to day_alive method from model.rb for userBirthday
    @daysAlive = days_alive(userBirthday)
    #Display results page results.erb (in the views folder)
    erb :results
  end


end