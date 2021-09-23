RSpec.describe 'a random double' do
  it 'only allows defined methods to be inboked' do
    # stuntman = double('Mr. Danger', fall_off_ladder: 'Ouch', light_on_fire: true)
    # expect(stuntman.fall_off_ladder).to eq 'Ouch'
    # expect(stuntman.light_on_fire).to be_truthy
    # doubleはモックオブジェクトを作る
    # allowはモックオブジェクト、receiveはメソッド名、and_returnは返却したい値やオブジェクト
    # allow(実装を置き換えたいオブジェクト).to receive(置き換えたいメソッド名).and_return(返却したい値やオブジェクト)
    # allow(stuntman).to receive(:fall_off_ladder)
    # expect(stuntman.fall_off_ladder).to be_nil

    stuntman = double("Mr. Danger")
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq 'Ouch'
    expect(stuntman.light_on_fire).to eq true
    expect(stuntman.light_on_fire).to be_truthy
  end

end