# config/initializers/twilio.rb
require 'twilio-ruby'

Twilio.configure do |config|
  config.account_sid = 'AC99942bb9597b421571e7090d26c5512c'
  config.auth_token = 'fa823fa0b3400cc33ebf222b4c41c166'
  config.phone_number = '+18885063054'
end
