json.extract! project, :id, :name, :description, :start, :end, :owner_id, :created_at, :updated_at
json.url project_url(project, format: :json)
