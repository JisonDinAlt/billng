require 'test_helper'

class TransferCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transfer_category = transfer_categories(:one)
  end

  test "should get index" do
    get transfer_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_transfer_category_url
    assert_response :success
  end

  test "should create transfer_category" do
    assert_difference('TransferCategory.count') do
      post transfer_categories_url, params: { transfer_category: { category_name: @transfer_category.category_name, type_lookup_code: @transfer_category.type_lookup_code } }
    end

    assert_redirected_to transfer_category_url(TransferCategory.last)
  end

  test "should show transfer_category" do
    get transfer_category_url(@transfer_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_transfer_category_url(@transfer_category)
    assert_response :success
  end

  test "should update transfer_category" do
    patch transfer_category_url(@transfer_category), params: { transfer_category: { category_name: @transfer_category.category_name, type_lookup_code: @transfer_category.type_lookup_code } }
    assert_redirected_to transfer_category_url(@transfer_category)
  end

  test "should destroy transfer_category" do
    assert_difference('TransferCategory.count', -1) do
      delete transfer_category_url(@transfer_category)
    end

    assert_redirected_to transfer_categories_url
  end
end
