class Deck
  def self.build
  end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    # as_stubbed_constでクラス自体をスタブできる
    # スタブとは本物が用意できない時に動作に支障がないように置いておく代用品
  deck_klass = class_double(Deck).as_stubbed_const
    allow(deck_klass).to receive(:build).and_return(['Ace', 'Queen'])
    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq(['Ace', 'Queen'])
  end
end