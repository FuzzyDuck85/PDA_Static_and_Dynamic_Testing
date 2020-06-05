### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) # should be a class method, eg. Self.check_for_ace or CardGame.check_for_ace, also the naming is incorrect and should be in snake_case.
    if card.value = 1 # Requires an additional equals sign '=='.
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # Typo of 'def'. This example should also be a class method eg. Self.highest_card. There should be a comma between card1 and card 2 inside the parameter brackets
  if card1.value > card2.value
    return card #this should be "return card1"
  else
    return card2
  end
end
end # unexpected additional "end", should be removed.

def self.cards_total(cards)
  total # this should have an initial value of "0"
  for card in cards
    total += card.value
    return "You have a total of" + total # total needs to be interpolated within the string eg. "You have a total of + #{total}"
  end # End should be on line 31 to end the loop before returning a value
end
# end statement missing to end the "CardGame" class
```
