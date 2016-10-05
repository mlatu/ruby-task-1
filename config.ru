require './frank'
require 'rack/contrib'
require 'sidekiq/web'

use Rack::PostBodyContentTypeParser
run Rack::URLMap.new('/' => App, '/sidekiq' => Sidekiq::Web)
run Sinatra::Application
