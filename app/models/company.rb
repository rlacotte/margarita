class Company
  include Mongoid::Document
  field :company, type: String
  field :siret, type: String
end
