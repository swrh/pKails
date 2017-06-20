require 'test_helper'

class IndicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @indication = indications(:one)
  end

  test "should get index" do
    get indications_url
    assert_response :success
  end

  test "should get new" do
    get new_indication_url
    assert_response :success
  end

  test "should create indication" do
    assert_difference('Indication.count') do
      post indications_url, params: { indication: { region_id: @indication.region_id, who: @indication.who } }
    end

    assert_redirected_to indication_url(Indication.last)
  end

  test "should show indication" do
    get indication_url(@indication)
    assert_response :success
  end

  test "should get edit" do
    get edit_indication_url(@indication)
    assert_response :success
  end

  test "should update indication" do
    patch indication_url(@indication), params: { indication: { region_id: @indication.region_id, who: @indication.who } }
    assert_redirected_to indication_url(@indication)
  end

  test "should destroy indication" do
    assert_difference('Indication.count', -1) do
      delete indication_url(@indication)
    end

    assert_redirected_to indications_url
  end
end
