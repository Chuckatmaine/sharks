require 'test_helper'

class TagsControllerTest < ActionController::TestCase
  setup do
    @tag = tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tag" do
    assert_difference('Tag.count') do
      post :create, tag: { angler_id: @tag.angler_id, comments: @tag.comments, condition: @tag.condition, date: @tag.date, five_miles: @tag.five_miles, lat: @tag.lat, length: @tag.length, lon: @tag.lon, method: @tag.method, number: @tag.number, shark_id: @tag.shark_id, species: @tag.species, tagger_id: @tag.tagger_id, weight: @tag.weight }
    end

    assert_redirected_to tag_path(assigns(:tag))
  end

  test "should show tag" do
    get :show, id: @tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tag
    assert_response :success
  end

  test "should update tag" do
    patch :update, id: @tag, tag: { angler_id: @tag.angler_id, comments: @tag.comments, condition: @tag.condition, date: @tag.date, five_miles: @tag.five_miles, lat: @tag.lat, length: @tag.length, lon: @tag.lon, method: @tag.method, number: @tag.number, shark_id: @tag.shark_id, species: @tag.species, tagger_id: @tag.tagger_id, weight: @tag.weight }
    assert_redirected_to tag_path(assigns(:tag))
  end

  test "should destroy tag" do
    assert_difference('Tag.count', -1) do
      delete :destroy, id: @tag
    end

    assert_redirected_to tags_path
  end
end
