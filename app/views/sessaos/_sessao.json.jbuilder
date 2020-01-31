json.extract! sessao, :id, :cinema_id, :filme_id, :inicio, :idade, :sala, :tipo, :cadeiras, :valor, :created_at, :updated_at
json.url sessao_url(sessao, format: :json)
