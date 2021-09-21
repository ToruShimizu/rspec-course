class Card 
  attr_accessor :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do 
  def card 
    p 'card'
    Card.new("Ace", "Spades")
  end

  it "has a rank and that rank change" do
    expect(card.rank).to eq("Ace")
    card.rank = "Queen"
    expect(card.rank).to eq("Queen")

  end
  it "has a suit" do
    expect(card.suit).to eq("Spades")
  end
end