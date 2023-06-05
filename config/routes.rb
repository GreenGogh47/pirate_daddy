# config/routes.rb
Rails.application.routes.draw do
  root "users#send_sms_form"
  post "send_sms", to: "users#send_sms"
end
