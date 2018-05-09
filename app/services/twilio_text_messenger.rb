class TwilioTextMessenger
  attr_reader :message
 
  def initialize(message)
    @message = message
  end
 
  def call
    # binding.pry
    client = Twilio::REST::Client.new
    client.messages.create({
      from: Rails.application.secrets.twilio_phone_number,
      to: '+917987374522',
      body: message
    })
  end
end