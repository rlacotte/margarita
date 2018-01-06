class Company
  include Mongoid::Document
  field :company, type: String
  field :siret, type: String

  belongs_to :step, class_name: 'Config::Step'
end
