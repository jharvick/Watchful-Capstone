require "test_helper"

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create!(name: "Test", email: "test@test.com", password: "password")
    post "/sessions.json", params: { email: "test@test.com", password: "password" }
    data = JSON.parse(response.body)
    @jwt = data["jwt"]
  end

  test "index" do
    get "/favorites.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Favorite.count, data.length
  end

  test "create" do
    assert_difference "Favorite.count", 1 do
      post "/favorites.json",
        params: { item_id: Item.first.id },
        headers: { "Authorization" => "Bearer #{@jwt}" }
      assert_response 200
    end
  end
end
