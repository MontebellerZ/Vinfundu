json.extract! filme, :id, :nome, :tipo, :duracao, :diretor, :elenco, :nacionalidade, :sinopse, :trailer, :cartaz, :created_at, :updated_at
json.url filme_url(filme, format: :json)
