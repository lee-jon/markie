# Add config here



# Example OAuth Google Apps
#
#
# require 'openid/store/filesystem'
# require 'omniauth/strategies/google_apps'
#
### And then in the application
#
# configure do
#   helpers do
#     def protected!
#       redirect '/auth/g' unless session[:user_id]
#     end
#   end
#
#   use Rack::Session::Cookie
#   use OmniAuth::Builder do
#     provider :google_apps,
#              :store => OpenID::Store::Filesystem.new('./tmp'),
#              :name => 'g',
#              :domain => 'alliants.com'
#   end
#
#   post '/auth/g/callback' do
#     if auth = request.env['omniauth.auth']
#       session[:user_id] = auth['info']['email']
#       redirect '/'
#     else
#       redirect '/auth/failure'
#     end
#   end
#
#   get '/auth/failure' do
#     'Not on your life.'
#   end
# end