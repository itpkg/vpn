require 'test_helper'

module Vpn
  class UsersControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end

  end
end
