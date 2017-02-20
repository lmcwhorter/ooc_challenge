class Card
    attr_accessor :rank, :suit

    def initialize(rank, suit)
      self.rank = rank
      self.suit = suit
    end

    def output_card
      puts "#{self.rank} of #{self.suit}"
    end

end

  class Deck
    def initialize
      @card_deck = []
      @ranks = %w[Ace 2 3 4 5 6 7 8 9 10 Jack Queen King]
      @suits = %w[clubs diamonds hearts spades]
      
      @ranks.each do |rank|
        @suits.each do |suit|
          @card_deck << Card.new(rank,suit)
        end
      end
    end

    def shuffle
      @card_deck.shuffle!
    end

    def output
      @card_deck.each do |draw|
        draw.output_card
      end
    end

    def deal
      @card_deck.shift.output_card
    end
  end

  deck = Deck.new
  deck.shuffle
  deck.deal
  