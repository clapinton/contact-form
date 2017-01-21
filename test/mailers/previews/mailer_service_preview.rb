# Preview all emails at http://localhost:3000/rails/mailers/mailer_service
class MailerServicePreview < ActionMailer::Preview
  def sample_email
    from = 'me@bla.com'
    body = 'testing'
    MailerService.create_email(from, body)
  end

end
