require 'hadena_kaomoji'
describe 'HadenaKaomoji::Expression' do
  before do
    @he = HadenaKaomoji::Expression
  end

  it 'is a Regexp' do
    expect(@he).to be_a Regexp
  end

  describe '#=~' do
    context %q|given （*^_^*）| do
      it { expect(@he =~ %q|（*^_^*）| ).to equal 0 }
    end

    context %q|given ^^;| do
      it { expect(@he =~ %q|^^;| ).to be nil }
    end
  end

  describe '#match' do
    context %q|given （*^_^*）| do
      it { expect(@he.match(%q|（*^_^*）|)[0]).to eq %q|（*^_^*）| }
    end

    context %q|given ^^;| do
      it { expect(@he.match(%q|^^;|)).to be_nil }
    end
  end
end
