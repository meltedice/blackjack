# encoding: utf-8

describe Blackjack::Game do

  describe "with a dealer and a player" do
    it "should start new game" do
      expect { BlackJack::Game.new(dealer, player).not_to raise_error }
    end
  end

end
