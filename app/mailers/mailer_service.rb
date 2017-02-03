class MailerService < ApplicationMailer

  def create_email(from_email, body)
    @from_email = from_email
    @body = body
    to_email = ''
    mail(to: to_email, subject: 'Submission on Portfolio')
  end
end
