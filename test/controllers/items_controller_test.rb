require "test_helper"

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/items.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Item.count, data.length
  end

  test "create" do
    assert_difference "Item.count", 1 do
      post "/items.json", params: { name: "Succession", image_url: "https://ntvb.tmsimg.com/assets/p17051206_b_h8_ab.jpg?w=960&h=540", description: "A great show", category: "TV Show" }
      assert_response 200
    end
  end

  test "show" do
    get "/items/#{Item.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "image_url", "description", "category", "created_at", "updated_at"], data.keys
  end

  test "update" do
    item = Item.first
    patch "/items/#{item.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
    assert_equal item.image_url, data["image_url"]
    assert_equal item.description, data["description"]
    assert_equal item.category, data["category"]
  end

  test "destroy" do
    assert_difference "Item.count", -1 do
      delete "/items/#{Item.first.id}.json"
      assert_response 200
    end
  end
end
