require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "for content within a particular status update"  do
	status = Status.new
	assert !status.save
	assert !status.errors[:content].empty?
  end
  test "for the content of a status update being longer than 2 characters" do
  	status = Status.new
	status.content = "H"
	assert !status.save
	assert !status.errors[:content].empty?
  end
  test "that  a status has a user id" do
  	status = Status.new
  	status.content = "Hello World"
  	assert !status.save
  	assert !status.errors[:user_id].empty?
  end
end
