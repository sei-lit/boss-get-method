require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

# ここにコードを書こう

get "/" do
    erb :index
end

get "/answer/yes" do
    @message = "おめでとう！"
    @is_correct = true
    @bilson_img = "../img/bilson_with_maru.png"
    erb :answer
end

get "/answer/no" do
    @message = "残念..."
    @is_correct = false
    @bilson_img = "../img/bilson_with_batsu.png"
    erb :answer
end