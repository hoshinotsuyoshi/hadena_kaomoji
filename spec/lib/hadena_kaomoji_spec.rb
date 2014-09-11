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

    context %q|given （*^ ◇ ^*）| do
      it { expect(@he =~ %q|（*^ ◇ ^*）| ).to equal 0 }
    end

    context %q|given （*^^*）| do
      it { expect(@he =~ %q|（*^^*）| ).to equal 0 }
    end

    context %q|given （*^ ^*）| do
      it { expect(@he =~ %q|（*^ ^*）| ).to equal 0 }
    end

    context %q|given (ΦωΦ)| do
      it { expect(@he =~ %q|(ΦωΦ)| ).to equal 0 }
    end

    context %q|given （ΦωΦ)| do
      it { expect(@he =~ %q|（ΦωΦ)| ).to equal 0 }
    end

    context %q|given （ΦωΦ）| do
      it { expect(@he =~ %q|（ΦωΦ）| ).to equal 0 }
    end

    context %q|given （Φ . Φ）| do
      it { expect(@he =~ %q|（Φ . Φ）| ).to equal 0 }
    end

    context %q|given （Φ）| do
      it { expect(@he =~ %q|（Φ）| ).to equal 0 }
    end

    context %q|given （ Φ）| do
      it { expect(@he =~ %q|（ Φ）| ).to equal 0 }
    end

    context %q|given （.. Φ）| do
      it { expect(@he =~ %q|（.. Φ）| ).to equal 0 }
    end

    context %q|given （ω）| do
      it { expect(@he =~ %q|（ω）| ).to equal 0 }
    end

    context %q|given ^^;| do
      it { expect(@he =~ %q|^^;| ).to be nil }
    end

    context %q|given （.. ）| do
      it { expect(@he =~ %q|（.. ）| ).to be nil }
    end
  end

  describe '#match' do
    context %q|given （*^_^*）| do
      it { expect(@he.match(%q|（*^_^*）|)[0]).to eq %q|（*^_^*）| }
    end

    context %q|given （*^ ◇ ^*）| do
      it { expect(@he.match(%q|（*^ ◇ ^*）|)[0]).to eq %q|（*^ ◇ ^*）| }
    end

    context %q|given （*^^*）| do
      it { expect(@he.match(%q|（*^^*）|)[0]).to eq %q|（*^^*）| }
    end

    context %q|given （*^ ^*）| do
      it { expect(@he.match(%q|（*^ ^*）|)[0]).to eq %q|（*^ ^*）| }
    end

    context %q|given (ΦωΦ)| do
      it { expect(@he.match(%q|(ΦωΦ)| )[0]).to eq %q|(ΦωΦ)| }
    end

    context %q|given （ΦωΦ)| do
      it { expect(@he.match(%q|（ΦωΦ)| )[0]).to eq %q|（ΦωΦ)| }
    end

    context %q|given （ΦωΦ）| do
      it { expect(@he.match(%q|（ΦωΦ）| )[0]).to eq %q|（ΦωΦ）| }
    end

    context %q|given （Φ . Φ）| do
      it { expect(@he.match(%q|（Φ . Φ）| )[0]).to eq %q|（Φ . Φ）| }
    end

    context %q|given （Φ）| do
      it { expect(@he.match(%q|（Φ）| )[0]).to eq %q|（Φ）| }
    end

    context %q|given （ Φ）| do
      it { expect(@he.match(%q|（ Φ）| )[0]).to eq %q|（ Φ）| }
    end

    context %q|given （.. Φ）| do
      it { expect(@he.match(%q|（.. Φ）| )[0]).to eq %q|（.. Φ）| }
    end

    context %q|given （ω）| do
      it { expect(@he.match(%q|（ω）| )[0]).to eq %q|（ω）| }
    end

    context %q|given ^^;| do
      it { expect(@he.match(%q|^^;|)).to be_nil }
    end

    context %q|given （.. ）| do
      it { expect(@he.match(%q|（.. ）|)).to be_nil }
    end
  end
end
