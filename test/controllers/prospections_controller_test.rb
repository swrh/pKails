require 'test_helper'

class ProspectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prospection = prospections(:one)
  end

  test "should get index" do
    get prospections_url
    assert_response :success
  end

  test "should get new" do
    get new_prospection_url
    assert_response :success
  end

  test "should create prospection" do
    assert_difference('Prospection.count') do
      post prospections_url, params: { prospection: { customer_id: @prospection.customer_id, product_id: @prospection.product_id, value: @prospection.value } }
    end

    assert_redirected_to prospection_url(Prospection.last)
  end

  test "should show prospection" do
    get prospection_url(@prospection)
    assert_response :success
  end

  test "should get edit" do
    get edit_prospection_url(@prospection)
    assert_response :success
  end

  test "should update prospection" do
    patch prospection_url(@prospection), params: { prospection: { customer_id: @prospection.customer_id, product_id: @prospection.product_id, value: @prospection.value } }
    assert_redirected_to prospection_url(@prospection)
  end

  test "should destroy prospection" do
    assert_difference('Prospection.count', -1) do
      delete prospection_url(@prospection)
    end

    assert_redirected_to prospections_url
  end
end
