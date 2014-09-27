# encoding: utf-8

module Blackjack
  class Game
    attr_reader :dealer, :player

    def initialize(dealer, player)
      @dealer = dealer
      @player = player
    end

  end
end
