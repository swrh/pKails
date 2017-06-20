require 'test_helper'

class ProposalStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proposal_status = proposal_statuses(:one)
  end

  test "should get index" do
    get proposal_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_proposal_status_url
    assert_response :success
  end

  test "should create proposal_status" do
    assert_difference('ProposalStatus.count') do
      post proposal_statuses_url, params: { proposal_status: { finish: @proposal_status.finish, name: @proposal_status.name } }
    end

    assert_redirected_to proposal_status_url(ProposalStatus.last)
  end

  test "should show proposal_status" do
    get proposal_status_url(@proposal_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_proposal_status_url(@proposal_status)
    assert_response :success
  end

  test "should update proposal_status" do
    patch proposal_status_url(@proposal_status), params: { proposal_status: { finish: @proposal_status.finish, name: @proposal_status.name } }
    assert_redirected_to proposal_status_url(@proposal_status)
  end

  test "should destroy proposal_status" do
    assert_difference('ProposalStatus.count', -1) do
      delete proposal_status_url(@proposal_status)
    end

    assert_redirected_to proposal_statuses_url
  end
end
