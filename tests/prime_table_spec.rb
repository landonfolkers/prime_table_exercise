require 'rspec'
require_relative '../app/prime_table'

describe PrimeTable do

    before do
      @prime_table = PrimeTable.new
    end
  
    describe "get_primes function" do
  
      context 'when user inputs the number 12' do
        it 'primes array should have a length of 12' do
          expect(@prime_table.get_primes(12).length == 12)
        end
      end
  
      context 'when user inputs the number 3' do
        it 'primes array should have a length of 3' do
          expect(@prime_table.get_primes(3).length == 3)
        end
      end
    end
  end