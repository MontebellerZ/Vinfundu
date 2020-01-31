class IndexController < ApplicationController
  
  def inicial
    @filmes = Filme.all
    @promocaos = Promocao.all
  end
  
  def cartaz
    @filmes = Filme.all
  end
  
  def talk
    @reclamacao = Reclamacao.new
  end
  
  def produtos
    @bombonieres = Bomboniere.all
  end
  
  def sessoes
    @cinemas = Cinema.all
    @sessaos = Sessao.all
    @filmes = Filme.all
    
  end
end
