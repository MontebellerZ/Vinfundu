json.extract! reclamacao, :id, :nome, :email, :cinema_id, :mensagem, :created_at, :updated_at
json.url reclamacao_url(reclamacao, format: :json)
