class Round
        attr_reader :deck, :turns, :number_correct

    def initialize(deck)
         @deck = deck
         @turns = []
         @number_correct = 0
    end


   def current_card
    deck.cards.first
   end

    def take_turn(guess)
        turn = Turn.new(guess, current_card)
        @turns << turn
        @deck.cards.shift
        if turn.correct?
           @number_correct += 1
        end
         turn
    end

    def number_correct_by_category(category)


        
    end

   

end



