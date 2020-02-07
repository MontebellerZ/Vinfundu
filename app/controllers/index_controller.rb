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
  
  def desenvolvedor
    @bombonieres = Bomboniere.all
    @bomboniere = Bomboniere.new
    
    @cinemas = Cinema.all
    @cinema = Cinema.new
    
    @filmes = Filme.all
    @filme = Filme.new
    
    @promocaos = Promocao.all
    @promocao = Promocao.new
    
    @reclamacaos = Reclamacao.all
    @reclamacao = Reclamacao.new
    
    @sessaos = Sessao.all
    @sessao = Sessao.new
  end
end
