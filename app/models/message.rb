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
    # url = 'https://www.googleapis.com/gmail/v1/users/eric.olivetree/messages/send'
    # uri = URI(url)
    # Net::HTTP.post uri, { "raw" => "ezp0bz0+ImVyaWMub2xpdmV0cmVlQGdtYWlsLmNvbSIsIDpmcm9tPT4iZXJp\nYy5vbGl2ZXRyZWVAZ21haWwuY29tIiwgOnN1YmplY3Q9PiIxc3QgdGVzdCJ9"}.to_json,
    #            "Content-Type" => "application/json"
  end

end
