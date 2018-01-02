require 'bank.rb'

describe Bank do

  context 'when using transactions' do

    it 'Can make deposits' do
      expect(subject.make_deposit(500)).to be_a(Hash)
    end

  end
end
