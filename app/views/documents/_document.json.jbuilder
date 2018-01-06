json.extract! document, :id, :document_name, :document_type, :created_at, :updated_at
json.url document_url(document, format: :json)
