require './card'
require 'rspec'
require './deck'

RSpec.describe Deck do

  it 'exists' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    expect(deck).to be_a(Deck)
  end

  describe 'has 3 cards' do
    it 'Cards #count' do
      card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
      card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
      card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
      cards = [card_1, card_2, card_3]
      deck = Deck.new(cards)

      expect(cards.count).to eq(3)
    end

    describe 'returns cards to a category' do
      it 'Cards #cards_in_category' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        cards = [card_1, card_2, card_3]
        deck = Deck.new(cards)
    
        expect(deck.cards_in_category(:STEM).count).to eq(2)
        expect(deck.cards_in_category(:STEM)).to eq([card_2, card_3])


      end
    end
  





  end





end


# def cards_in_category(category)
#   @cards.find_all do |card|
#     card.category == category
#   end

# expect(deck.cards_in_category(:STEM)).to eq([card_2,card_3])

##we want a list of cards that match th category