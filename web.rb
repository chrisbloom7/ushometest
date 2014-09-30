require 'sinatra'

configure :production do
  require 'newrelic_rpm'
end

get '/' do
  File.read(File.join('public', 'index.html'))
end

get '/video' do
  File.read(File.join('public', 'video.html'))
end