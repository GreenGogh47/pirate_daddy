# app/controllers/users_controller.rb
class UsersController < ApplicationController
  def send_sms
    phone_number = params[:phone_number]
    insult = SERVICE CALL

    # Use Twilio to send the insult to the provided phone number
    send_sms_message(phone_number, insult)

    redirect_to root_path, notice: 'Yer insult be sent, Matey!'
  end

  private
  

  def send_sms_message(phone_number, message)
    client = Twilio::REST::Client.new(ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN'])

    client.messages.create(
      from: '+18885063054', 
      to: phone_number,
      body: message
    )
  end
end
