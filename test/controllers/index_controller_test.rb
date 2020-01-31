require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get inicial" do
    get index_inicial_url
    assert_response :success
  end

end
