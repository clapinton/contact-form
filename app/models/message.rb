require 'net/http'

class Message < ActiveRecord::Base  

  def send_message
    # This is where we call the GMAIL API and send the email
    # Import net/http. Maybe the API key goes on the body?

    # Testing GET
    # url = 'http://pokeapi.co/api/v2/'
    # uri = URI(url)
    # response = Net::HTTP.get(uri)
    # bla = JSON.parse(response)
    # bla

    # Testing POST
    # msg = "blablabla"
    # enc_msg = Base64.encode64(msg)
    # post_data = { }
    # url = ''
    # uri = URI(url)
    # Net::HTTP.post uri, { "raw" => ""}.to_json,
    #            "Content-Type" => "application/json"
  end

  def captcha_validated?()
    secret = ENV["captcha_secret"]
    debugger
    uri = URI("https://www.google.com/recaptcha/api/siteverify")
    res = Net::HTTP.post_form(uri, secret: secret, response: self.captcha_key)
    JSON.parse(res.body)["success"]
  end

end
