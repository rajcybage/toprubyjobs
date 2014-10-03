require 'test_helper'

class JoblistsControllerTest < ActionController::TestCase
  setup do
    @joblist = joblists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:joblists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create joblist" do
    assert_difference('Joblist.count') do
      post :create, joblist: { job_link: @joblist.job_link, location: @joblist.location, long_description: @joblist.long_description, number_of_position: @joblist.number_of_position, recruiter_name: @joblist.recruiter_name, short_description: @joblist.short_description, title: @joblist.title, type: @joblist.type }
    end

    assert_redirected_to joblist_path(assigns(:joblist))
  end

  test "should show joblist" do
    get :show, id: @joblist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @joblist
    assert_response :success
  end

  test "should update joblist" do
    patch :update, id: @joblist, joblist: { job_link: @joblist.job_link, location: @joblist.location, long_description: @joblist.long_description, number_of_position: @joblist.number_of_position, recruiter_name: @joblist.recruiter_name, short_description: @joblist.short_description, title: @joblist.title, type: @joblist.type }
    assert_redirected_to joblist_path(assigns(:joblist))
  end

  test "should destroy joblist" do
    assert_difference('Joblist.count', -1) do
      delete :destroy, id: @joblist
    end

    assert_redirected_to joblists_path
  end
end
