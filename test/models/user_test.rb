require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'user with a valid email should be valid' do
  user = User.new(email: 'test@test.org', password_digest: 'test')
  assert user.valid? 
  end
  
  test 'user with an invalid email should be invalid' do
  user = User.new(email:'kachapourri', password_digest: 'ciabatta')
  assert_not user.valid?
  end

  test 'user with taken email should be invalid' do
  new_user = users(:one)
  user = User.new(email: new_user.email, password_digest: 'test')
  assert_not user.valid?
  end

  
  # test "the truth" do
  #   assert true
  # end
end
