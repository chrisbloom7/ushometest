require 'sinatra'

configure :production do
  require 'newrelic_rpm'
end

set :public_folder, File.dirname(__FILE__) + '/static'

get '/' do
  File.read(File.join('public', 'index.html'))
end