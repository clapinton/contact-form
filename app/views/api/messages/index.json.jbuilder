@messages.each do |message|
  json.set! message.created_at do
    json.from message.from_email
    json.message message.body
    json.sent message.sent
    json.date message.created_at
    json.error message.error_msg
  end
end