# frozen_string_literal: true

require_relative '../lib/quote.rb'
describe Quotes do
  let(:quotes) { Quotes.new }
  context '#make_request' do
    it 'returns true for an array object from the remote site.' do
      expect(quotes.make_request.is_a?(Array)).to eql(true)
    end
  end

  context '#select_ramdom' do
    it 'returns true for a hash object having two key/value pairs' do
      expect(quotes.select_random.size).to eql(2)
    end
  end

  context '#select_ramdom' do
    it 'returns false for a hash object having two key/value pairs' do
      expect(quotes.select_random.size).not_to eql(1)
    end
  end
end