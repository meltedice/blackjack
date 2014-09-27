# encoding: utf-8

describe Blackjack::Dealer do

  context "when dealer name is given" do
    subject(:dealer) { Blackjack::Dealer.new("The dealer") }
    describe "#name" do
      it { expect(dealer.name).to eq "The dealer" }
    end
  end

  context "when dealer name is not given" do
    subject(:dealer) { Blackjack::Dealer.new }
    describe "#name" do
      it { expect(dealer.name).to eq "Dealer" }
    end
  end

end
