require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "index" do
    get post_root_path
    assert_response :success
  end
end
