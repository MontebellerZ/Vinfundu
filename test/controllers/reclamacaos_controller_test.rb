require 'test_helper'

class ReclamacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reclamacao = reclamacaos(:one)
  end

  test "should get index" do
    get reclamacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_reclamacao_url
    assert_response :success
  end

  test "should create reclamacao" do
    assert_difference('Reclamacao.count') do
      post reclamacaos_url, params: { reclamacao: { cinema_id: @reclamacao.cinema_id, email: @reclamacao.email, mensagem: @reclamacao.mensagem, nome: @reclamacao.nome } }
    end

    assert_redirected_to reclamacao_url(Reclamacao.last)
  end

  test "should show reclamacao" do
    get reclamacao_url(@reclamacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_reclamacao_url(@reclamacao)
    assert_response :success
  end

  test "should update reclamacao" do
    patch reclamacao_url(@reclamacao), params: { reclamacao: { cinema_id: @reclamacao.cinema_id, email: @reclamacao.email, mensagem: @reclamacao.mensagem, nome: @reclamacao.nome } }
    assert_redirected_to reclamacao_url(@reclamacao)
  end

  test "should destroy reclamacao" do
    assert_difference('Reclamacao.count', -1) do
      delete reclamacao_url(@reclamacao)
    end

    assert_redirected_to reclamacaos_url
  end
end
