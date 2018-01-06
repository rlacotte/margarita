class Document
  include Mongoid::Document
  field :document_name, type: String
  field :document_type, type: String

  mount_uploader :file, DocumentUploader

  belongs_to :company
end
