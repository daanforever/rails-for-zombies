require 'test_helper'

class TweetTest < ActiveSupport::TestCase

  test "should not save empty tweet" do
    tweet = Tweet.new
    assert !tweet.save, "Saved the tweet without a status and name"
  end

  test "should not save tweet with empty status" do
    zombie = Zombie.first
    tweet = Tweet.new
    tweet.zombie = zombie
    assert !tweet.save, "Saved the tweet without a status"
  end


  test "should not save tweet with empty name" do
    tweet = Tweet.new
    tweet.status = "It's my test status"
    assert !tweet.save, "Saved the tweet without a name"
  end

  test "should not save tweet with wrong zombie_id" do
    zombie = Zombie.new
    tweet = Tweet.new
    tweet.status = "Right message from zombie!"
    tweet.zombie = zombie
    assert !tweet.save, "Tweet with wrong zombie_id saved"
  end

  test "should save tweet with status and name" do
    zombie = Zombie.first
    tweet = Tweet.new
    tweet.status = "Right message from zombie!"
    tweet.zombie = zombie
    assert tweet.save, "Right tweet not saved"
  end


end
