# encoding: utf-8

module Blackjack
  class Decks
    def new_deck
      cards = []
      4.times do |n|
        %w(A 2 3 4 5 6 7 8 9 10 J Q K).each do |name|
          cards << Card.new(name)
        end
      end
      cards
    end

    def initialize(num_of_decks=1)
      @cards = []
      num_of_decks.times do |n|
        @cards += new_deck
      end
      @cards.shuffle!
    end

    def serve_cards(num_of_cards)
      num_of_cards.times.map do |n|
        @cards.shift
      end
    end

    def num_cards
      @cards.size
    end

    def has_cards?
      !@cards.empty?
    end
  end
end
