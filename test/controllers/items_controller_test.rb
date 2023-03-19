require "test_helper"

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/items.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Item.count, data.length
  end
end
