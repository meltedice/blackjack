# encoding: utf-8

shared_examples "a card" do |name|

  context "with card A" do
    subject(:card) { BlackJack::Card.new('A') }
    it "its name should eq A" do
      expect(card.name).to eq 'A'
    end
    it "its value should eq 1" do
      expect(card.value).to eq 1
    end
    it { expect(card).to have_alternative_value }
    it "should have alternative value 11" do
      expect(card.alternative_value).to eq 11
    end
  end

  context "with card 2" do
    subject(:card) { BlackJack::Card.new('2') }
    it "its name should eq 2" do
      expect(card.name).to eq '2'
    end
    it "its value should eq 2" do
      expect(card.value).to eq 2
    end
    it { expect(card).not_to have_alternative_value }
  end

  context "with card 10" do
    subject(:card) { BlackJack::Card.new('10') }
    it "its name should eq 10" do
      expect(card.name).to eq '10'
    end
    it "its value should eq 10" do
      expect(card.value).to eq 10
    end
    it { expect(card).not_to have_alternative_value }
  end

  context "with card J" do
    subject(:card) { BlackJack::Card.new('J') }
    it "its name should eq J" do
      expect(card.name).to eq 'J'
    end
    it "its value should eq 10" do
      expect(card.value).to eq 10
    end
    it { expect(card).not_to have_alternative_value }
  end

  context "with card Q" do
    subject(:card) { BlackJack::Card.new('Q') }
    it "its name should eq Q" do
      expect(card.name).to eq 'Q'
    end
    it "its value should eq 10" do
      expect(card.value).to eq 10
    end
    it { expect(card).not_to have_alternative_value }
  end

  context "with card K" do
    subject(:card) { BlackJack::Card.new('K') }
    it "its name should eq K" do
      expect(card.name).to eq 'K'
    end
    it "its value should eq 10" do
      expect(card.value).to eq 10
    end
    it { expect(card).not_to have_alternative_value }
  end

  context "with invalid card Jorker" do
    it "should occur Invalid Card error" do
      expect { BlackJack::Card.new('Jorker') }.to raise_error BlackJack::Card::InvalidCardError
    end
  end

end

describe BlackJack::Card do
  it_behaves_like "a card"
end
