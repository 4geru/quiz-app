require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require 'open-uri'
require 'sinatra/json'
require './models/quiz.rb'
require 'json'
require 'sinatra-websocket'
require 'set'

set :server, 'thin'
set :sockets, []

get '/' do
    erb :index
end

get '/chat/:id' do 
    erb :chat
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

get '/ranking' do
    @users = User.all.sort
    erb :ranking
end

get '/room/:id' do
    @content = Contest.find(params[:id])
    puts Problem.find(@content.problem1).content
    erb :play_game
end

get '/selector' do
    erb :selector
end

get '/set_quiz' do
    query = Problem.count
    quizzes = Array.new []
    unit = Set.new []
    until quizzes.length > 25 do
      num = Random.new_seed % query
      #if not unit.include?(num)
    	  quizzes.push(num)
      #end
    end    
    Contest.create({
      user1: -1, user2: -2,
      user3: -3, user4: -4,
      problem1: quizzes[1], result1: 0,
      problem2: quizzes[2], result2: 0,
      problem3: quizzes[3], result3: 0,
      problem4: quizzes[4], result4: 0,
      problem5: quizzes[5], result5: 0,
      problem6: quizzes[6], result6: 0,
      problem7: quizzes[7], result7: 0,
      problem8: quizzes[8], result8: 0,
      problem9: quizzes[9], result9: 0,
      problem10: quizzes[10], result10: 0,
      problem11: quizzes[11], result11: 0,
      problem12: quizzes[12], result12: 0,
      problem13: quizzes[13], result13: 0,
      problem14: quizzes[14], result14: 0,
      problem15: quizzes[15], result15: 0,
      problem16: quizzes[16], result16: 0,
      problem17: quizzes[17], result17: 0,
      problem18: quizzes[18], result18: 0,
      problem19: quizzes[19], result19: 0,
      problem20: quizzes[20], result20: 0,
      problem21: quizzes[21], result21: 0,
      problem22: quizzes[22], result22: 0,
      problem23: quizzes[23], result23: 0,
      problem24: quizzes[24], result24: 0,
      problem25: quizzes[25], result25: 0
    })
    redirect '/room/' + String(Contest.count)
end


get '/test' do
    fp = open("problem.json",'r')
    data = fp.read
    json = JSON.parse(data)
    @contents = json
    erb :test 
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

get '/websocket' do
  if request.websocket? then
    request.websocket do |ws|
      ws.onopen do
        settings.sockets << ws
      end
      ws.onmessage do |msg|
        settings.sockets.each do |s|
          
          p JSON.parse(msg)
          s.send(msg)
        end
      end
      ws.onclose do
        settings.sockets.delete(ws)
      end
    end
  end
end
