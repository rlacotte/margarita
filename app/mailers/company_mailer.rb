class CompanyMailer < ApplicationMailer
  default from: 'notifications@margarita.com'

  def welcome_email()
    # @user = user
    @url  = 'http://example.com/login'
    mail(to: "marga@delacotte.com", subject: 'Welcome to My Awesome Site')
  end
end
