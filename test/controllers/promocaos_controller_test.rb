require 'test_helper'

class PromocaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @promocao = promocaos(:one)
  end

  test "should get index" do
    get promocaos_url
    assert_response :success
  end

  test "should get new" do
    get new_promocao_url
    assert_response :success
  end

  test "should create promocao" do
    assert_difference('Promocao.count') do
      post promocaos_url, params: { promocao: { cinema_id: @promocao.cinema_id, imagem: @promocao.imagem } }
    end

    assert_redirected_to promocao_url(Promocao.last)
  end

  test "should show promocao" do
    get promocao_url(@promocao)
    assert_response :success
  end

  test "should get edit" do
    get edit_promocao_url(@promocao)
    assert_response :success
  end

  test "should update promocao" do
    patch promocao_url(@promocao), params: { promocao: { cinema_id: @promocao.cinema_id, imagem: @promocao.imagem } }
    assert_redirected_to promocao_url(@promocao)
  end

  test "should destroy promocao" do
    assert_difference('Promocao.count', -1) do
      delete promocao_url(@promocao)
    end

    assert_redirected_to promocaos_url
  end
end
