require "test_helper"

class PacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pack = packs(:one)
  end

  test "should get index" do
    get packs_url, as: :json
    assert_response :success
  end

  test "should create pack" do
    assert_difference('Pack.count') do
      post packs_url, params: { pack: { name: @pack.name } }, as: :json
    end

    assert_response 201
  end

  test "should show pack" do
    get pack_url(@pack), as: :json
    assert_response :success
  end

  test "should update pack" do
    patch pack_url(@pack), params: { pack: { name: @pack.name } }, as: :json
    assert_response 200
  end

  test "should destroy pack" do
    assert_difference('Pack.count', -1) do
      delete pack_url(@pack), as: :json
    end

    assert_response 204
  end
end
