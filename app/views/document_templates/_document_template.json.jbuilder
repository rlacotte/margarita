json.extract! document_template, :id, :document_name, :document_type, :created_at, :updated_at
json.url document_template_url(document_template, format: :json)
