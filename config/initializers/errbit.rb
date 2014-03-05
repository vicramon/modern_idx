Airbrake.configure do |config|
  config.api_key = '652672d209e5581c7fc2f910f7cd97b4'
  config.host    = 'errbitvic.herokuapp.com'
  config.port    = 80
  config.secure  = config.port == 443
end
