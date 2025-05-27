require "test_helper"

class PostTest < ActiveSupport::TestCase
  def setup
    @post = posts(:one)
  end

  test "should be invalid without a title" do
    @post.title = ""
    assert_not @post.valid?
  end

  test "shoul be invalid without a body" do
    @post.body = ""
    assert_not @post.valid?
  end
end
