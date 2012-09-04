require 'test_helper'

class TweetTest < ActiveSupport::TestCase

  test "should not save empty tweet" do
    tweet = Tweet.new
    assert !tweet.save, "Saved the tweet without a status and name"
  end

  test "should not save tweet with empty status" do
    tweet = Tweet.new
    tweet.zombie = "Hor"
    assert !tweet.save, "Saved the tweet without a status"
  end


  test "should not save tweet with empty name" do
    tweet = Tweet.new
    tweet.status = "It's my test status"
    assert !tweet.save, "Saved the tweet without a name"
  end

  test "show save tweet with status and name" do
    tweet = Tweet.new
    tweet.status = "Right message from zombie!"
    tweet.zombie = "Orc"
    assert tweet.save, "Right tweet not saved"
  end

end
