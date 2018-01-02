require 'transactions_list.rb'

describe TransactionsList do
  context 'when passing a deposit' do
    it 'can save the transaction' do
      expect(subject.save_transaction({value: 'something'})).to eq([{value: 'something'}])
    end
    it 'has an array of the transaction' do
      subject.save_transaction({value: 'something'})
      expect(subject.transactions).to eq([{value: 'something'}])
    end
  end

  context 'when printing transactions' do
    it 'prints transactions' do
      subject.save_transaction({transaction: "deposit", value: 500, balance: 500, date: '2018-01-02'})
      subject.save_transaction({transaction: "deposit", value: 500, balance: 1000, date: '2018-01-02'})
      expect {subject.print_transactions}.to output.to_stdout
    end

  end
end
