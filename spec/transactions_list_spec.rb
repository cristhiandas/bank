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
end
