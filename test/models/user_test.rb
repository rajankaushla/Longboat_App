require 'test_helper'

class UserTest < ActiveSupport::TestCase
# User Validation 
  def setup
    @user = User.new(name: "Example User", email: "user@example.com",
                           password: "foobar", password_confirmation: "foobar")
  end

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 3
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 2
    assert_not @user.valid?
  end

end