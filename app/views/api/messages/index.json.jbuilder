@messages.each do |message|
  json.set! message.from_email do
    json.message message.body
    json.sent message.sent
    json.date message.created_at
    json.error message.error_msg
  end
end