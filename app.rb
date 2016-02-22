require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require 'open-uri'
require 'sinatra/json'
require './models/quiz.rb'
require './image_uploader.rb'
require 'json'

get '/' do
    erb :index
end

get '/create_page' do
    erb :create
end

post '/create' do
     @user = User.find_by(:name => params[:user_id])
    if @user.nil?
        User.create({
            name: params[:name],
            point: 0,
            join: 0
        })
        @user = User.find_by(:name => params[:user_id])
    end
    Problem.create({
        user_id: @user.id,
        content: params[:content],
        result_id: params[:result_id],
        select1: params[:select1],
        select2: params[:select2],
        select3: params[:select3],
        select4: params[:select4],
        result: 0,
        sum: 0,
    }) 
    redirect '/'
end

post '/user' do
    @user = User.find_by(:name => params[:name])
    if @user.nil?
        User.create({
            name: params[:name],
            point: 0,
            join: 0
        })
        @user = User.find_by(:name => params[:name])
    end
    erb :user
end

get '/user_login' do
    erb :user_login
end

get '/ranking' do
    @users = User.all.sort
    erb :ranking
end

get '/test' do
    fp = open("problem.json",'r')
    data = fp.read
    json = JSON.parse(data)
    @contents = json
    erb :test 
end