class Config::DocumentTemplate
  include Mongoid::Document
  field :document_name, type: String
  field :document_type, type: String
end
