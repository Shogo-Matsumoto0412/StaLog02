require 'test_helper'

class FieldsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fields_index_url
    assert_response :success
  end

end
