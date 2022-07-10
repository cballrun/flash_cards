require './lib/card'
require './lib/turn'
require './lib/round'
require './lib/deck'


RSpec.describe Round do

    it 'exists' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        cards = [card_1, card_2, card_3]
        deck = Deck.new(cards)
        round = Round.new(deck)

        expect(round).to be_a(Round)
    end

    
        it 'has turns' do
            card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
            card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
            cards = [card_1, card_2, card_3]
            deck = Deck.new(cards)
            round = Round.new(deck)

        expect(round.turns).to eq([])
        
        end

    describe 'returns the first card' do
        it 'Round #current_card' do
            card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
            card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
            cards = [card_1, card_2, card_3]
            deck = Deck.new(cards)
            round = Round.new(deck)


            expect(round.current_card).to eq(card_1)
        end
    end

    describe 'has a turn' do
        it 'Round #take_turn' do
            card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
            card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
            cards = [card_1, card_2, card_3]
            deck = Deck.new(cards)
            round = Round.new(deck)
            round.take_turn("Juneau")
           

            expect(round.take_turn("Juneau")).to be_a(Turn)
        end
    end

    describe 'moves a card out after taking a turn' do
        it 'Round #take_turn' do
            card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
            card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
            cards = [card_1, card_2, card_3]
            deck = Deck.new(cards)
            round = Round.new(deck)
            round.take_turn("Juneau")
           
            expect(deck.cards.count).to eq(2)
            expect(round.turns.count).to eq(1)
            expect(round.number_correct).to eq(1)
        end
    end

    # describe 'moves a card out after taking a turn' do
    #     it 'Round #take_turn' do
    #         card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    #         card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    #         card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    #         cards = [card_1, card_2, card_3]
    #         deck = Deck.new(cards)
    #         round = Round.new(deck)
    #         round.take_turn("Juneau")
    #         round.take_turn("Venus")

           
    #     end
    # end

    


end