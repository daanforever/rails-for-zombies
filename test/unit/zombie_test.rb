require 'test_helper'

class ZombieTest < ActiveSupport::TestCase

    test "should not to save zombies with empty name" do
        zombie = Zombie.new
        assert !zombie.save, "Zombie with empty name was saved"
    end

    test "should not to save zombie with empty graveyard" do
        zombie = Zombie.new
        zombie.name = "Nor"
        assert !zombie.save, "Zombie with empty graveyard was saved"
    end

end
