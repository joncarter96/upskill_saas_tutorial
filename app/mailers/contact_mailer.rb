class ContactMailer < ActionMailer::Base
  default to: 'joncarter96@gmail.com'
  
  def contact_email(name, email, comments)
    @name = name
    @email = email
    @body = comments
    
    mail(from: email, subject: 'Contact Form Message')
  end
end