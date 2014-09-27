# encoding: utf-8

shared_examples "a card (1)" do |name|
  describe BlackJack::Card do
    specify { expect(BlackJack::Card.new('A').name).to eq 'A' }
    specify { expect(BlackJack::Card.new('1').name).to eq '1' }
    specify { expect(BlackJack::Card.new('9').name).to eq '9' }
    specify { expect(BlackJack::Card.new('J').name).to eq 'J' }
    specify { expect(BlackJack::Card.new('Q').name).to eq 'Q' }
    specify { expect(BlackJack::Card.new('K').name).to eq 'K' }
  end
end

shared_examples "a card (2)" do |name|
  describe BlackJack::Card do
    specify { expect(BlackJack::Card.new(name).name).to eq name }
  end
end

describe BlackJack::Card do
  it_behaves_like "a card (1)"
  it_behaves_like "a card (2)", 'A'
  it_behaves_like "a card (2)", '1'
  it_behaves_like "a card (2)", '9'
  it_behaves_like "a card (2)", 'J'
  it_behaves_like "a card (2)", 'Q'
  it_behaves_like "a card (2)", 'K'
end


