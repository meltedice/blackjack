# encoding: utf-8

module Blackjack
  class Card
    class InvalidCardError < StandardError; end

    attr_reader :name, :value, :alternative_value

    def initialize(name)
      @name = name
      @alternative_value = nil
      case name
      when 'A'           # ace
        @value = 1
        @alternative_value = 11
      when '2'..'10'     # numbered card
        @value = name.to_i
      when 'J', 'Q', 'K' # face card
        @value = 10
      else
        raise InvalidCardError, "Invalid Card Name: #{name.inspect}"
      end
    end

    def has_alternative_value?
      !alternative_value.nil?
    end

  end
end
