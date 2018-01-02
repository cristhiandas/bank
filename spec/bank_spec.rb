require 'bank.rb'

describe Bank do

  context 'when using transactions' do

    it 'Can make deposits' do
      expect(subject.make_deposit(500)[0]).to be_a(Hash)
    end

    it 'Can make withdrawals' do
      expect(subject.make_withdrawal(500)[0]).to be_a(Hash)
    end


  end
end
