require 'test_helper'

class SenderAddressesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sender_addresses_index_url
    assert_response :success
  end

end
