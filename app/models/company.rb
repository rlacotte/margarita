class Company
  include Mongoid::Document
  field :company, type: String
  field :siret, type: String

  belongs_to :step, class_name: 'Config::Step'

  after_create :send_welcome_email

  def send_welcome_email
    CompanyMailer.welcome_email()
  end
end
