RSpec.describe Hash do
  # let(:subject) { Hash.new }
  it 'should start off empty' do
    puts subject
    puts subject.class
    subject[:some_key] = "Some Value"
    # expect(subject.length).to eq(0)

    expect(subject.length).to eq(1)
  end

  it 'is isolated between examples' do
    expect(subject.length).to eq(0)
  end
end