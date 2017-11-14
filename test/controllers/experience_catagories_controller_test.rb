require 'test_helper'

class ExperienceCatagoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get experiences_index_url
    assert_response :success
  end

end
