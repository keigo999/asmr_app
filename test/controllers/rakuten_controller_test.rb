require 'test_helper'

class RakutenControllerTest < ActionDispatch::IntegrationTest
  test "should get product" do
    get rakuten_product_url
    assert_response :success
  end

end
