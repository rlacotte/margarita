json.extract! config_document_template, :id, :document_name, :document_type, :created_at, :updated_at
json.url config_document_template_url(config_document_template, format: :json)
