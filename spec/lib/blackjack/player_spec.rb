# encoding: utf-8

describe Blackjack::Player do

  context "when player name is given" do
    subject(:player) { Blackjack::Player.new("The player") }
    describe "#name" do
      it { expect(player.name).to eq "The player" }
    end
  end

  context "when player name is not given" do
    subject(:player) { Blackjack::Player.new }
    describe "#name" do
      it { expect(player.name).to eq "Player" }
    end
  end

end
