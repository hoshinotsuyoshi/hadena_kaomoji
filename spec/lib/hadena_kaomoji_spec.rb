require 'hadena_kaomoji'
describe 'HadenaKaomoji::Expression' do
  it 'is a Regexp' do
    expect(HadenaKaomoji::Expression).to be_a Regexp
  end
end
