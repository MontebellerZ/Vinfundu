require 'test_helper'

class BombonieresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bomboniere = bombonieres(:one)
  end

  test "should get index" do
    get bombonieres_url
    assert_response :success
  end

  test "should get new" do
    get new_bomboniere_url
    assert_response :success
  end

  test "should create bomboniere" do
    assert_difference('Bomboniere.count') do
      post bombonieres_url, params: { bomboniere: { cinema_id: @bomboniere.cinema_id, produto: @bomboniere.produto, valor: @bomboniere.valor } }
    end

    assert_redirected_to bomboniere_url(Bomboniere.last)
  end

  test "should show bomboniere" do
    get bomboniere_url(@bomboniere)
    assert_response :success
  end

  test "should get edit" do
    get edit_bomboniere_url(@bomboniere)
    assert_response :success
  end

  test "should update bomboniere" do
    patch bomboniere_url(@bomboniere), params: { bomboniere: { cinema_id: @bomboniere.cinema_id, produto: @bomboniere.produto, valor: @bomboniere.valor } }
    assert_redirected_to bomboniere_url(@bomboniere)
  end

  test "should destroy bomboniere" do
    assert_difference('Bomboniere.count', -1) do
      delete bomboniere_url(@bomboniere)
    end

    assert_redirected_to bombonieres_url
  end
end
