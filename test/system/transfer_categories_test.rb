require "application_system_test_case"

class TransferCategoriesTest < ApplicationSystemTestCase
  setup do
    @transfer_category = transfer_categories(:one)
  end

  test "visiting the index" do
    visit transfer_categories_url
    assert_selector "h1", text: "Transfer Categories"
  end

  test "creating a Transfer category" do
    visit transfer_categories_url
    click_on "New Transfer Category"

    fill_in "Category Name", with: @transfer_category.category_name
    fill_in "Type Lookup Code", with: @transfer_category.type_lookup_code
    click_on "Create Transfer category"

    assert_text "Transfer category was successfully created"
    click_on "Back"
  end

  test "updating a Transfer category" do
    visit transfer_categories_url
    click_on "Edit", match: :first

    fill_in "Category Name", with: @transfer_category.category_name
    fill_in "Type Lookup Code", with: @transfer_category.type_lookup_code
    click_on "Update Transfer category"

    assert_text "Transfer category was successfully updated"
    click_on "Back"
  end

  test "destroying a Transfer category" do
    visit transfer_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Transfer category was successfully destroyed"
  end
end
