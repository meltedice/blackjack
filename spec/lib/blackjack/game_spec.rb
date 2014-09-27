# encoding: utf-8

describe Blackjack::Game do

  describe "with a dealer and a player" do
    let(:dealer) { Blackjack::Dealer.new }
    let(:player) { Blackjack::Player.new }
    it "should start new game" do
      expect { Blackjack::Game.new(dealer, player) }.not_to raise_error
    end
  end
end
