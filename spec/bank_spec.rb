require 'bank.rb'

describe Bank do

  context 'when using transactions' do

    it 'Can make deposits' do
      expect(subject.make_deposit(500)[0]).to be_a(Hash)
    end

    it 'Can make withdrawals if it have funds' do
      subject.make_deposit(500)
      expect(subject.make_withdrawal(500)[0]).to be_a(Hash)
    end

    it 'Cannot make withdrawals with insufficient funds' do
      expect{subject.make_withdrawal(1)}.to raise_error("Insufficient funds")
    end

    it 'Can print a single transaction' do
      subject.make_deposit(500)
      expect {subject.print_statement}.to output.to_stdout
    end

  end
end
