# encoding: utf-8

describe Blackjack::Decks do

  describe "with a deck" do
    subject(:decks) { Blackjack::Decks.new }

    let(:drawn_cards) {
      cards = []
      while decks.has_cards? do
        cards += decks.serve_cards(1)
      end
      cards
    }

    it "should have 52 cards" do
      expect(decks.num_cards).to eq 52
    end

    it "should serve 1 card" do
      expect(decks.serve_cards(1).size).to eq 1
    end

    it "should serve 52 cards then should be empty" do
      expect(decks.serve_cards(52).size).to eq 52
      expect(decks.has_cards?).to be_falsey
    end
  end

end
