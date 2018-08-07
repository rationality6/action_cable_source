require 'test_helper'

class PostTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_test = post_tests(:one)
  end

  test "should get index" do
    get post_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_post_test_url
    assert_response :success
  end

  test "should create post_test" do
    assert_difference('PostTest.count') do
      post post_tests_url, params: { post_test: { content: @post_test.content, name: @post_test.name } }
    end

    assert_redirected_to post_test_url(PostTest.last)
  end

  test "should show post_test" do
    get post_test_url(@post_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_test_url(@post_test)
    assert_response :success
  end

  test "should update post_test" do
    patch post_test_url(@post_test), params: { post_test: { content: @post_test.content, name: @post_test.name } }
    assert_redirected_to post_test_url(@post_test)
  end

  test "should destroy post_test" do
    assert_difference('PostTest.count', -1) do
      delete post_test_url(@post_test)
    end

    assert_redirected_to post_tests_url
  end
end
