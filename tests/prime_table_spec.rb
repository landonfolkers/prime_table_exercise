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

    describe "check_number function" do
  
        context 'when user inputs the number 15' do
          it 'should return true' do
            expect(@prime_table.check_number(15) == true)
          end
        end
    
        context 'when user inputs the number -5' do
          it 'should return false' do
            expect(@prime_table.check_number(-5) == false)
          end
        end

        context 'when user inputs the number 2.6' do
            it 'should return false' do
              expect(@prime_table.check_number(2.6) == false)
            end
          end
      end
  
    describe "create_table function" do

    context 'when a user inputs int 8 ' do
        it 'prints a 2 x 2 table' do
            expect do
                @prime_table.create_table(2)
                end.to output("      2    3   \n\n2  |  4    6   \n\n3  |  6    9   \n\n").to_stdout
        end
    end
  
      context 'when a user inputs int 4' do
        it 'prints a 4 x 4 table' do
          expect do
            @prime_table.create_table(4)
          end.to output("      2    3    5    7   \n\n2  |  4    6    10   14  \n\n3  |  6    9    15   21  \n\n5  |  10   15   25   35  \n\n7  |  14   21   35   49  \n\n").to_stdout
        end
      end

        
      context 'when a user inputs int 4.3' do
        it 'prints a warning message' do
            expect do
                @prime_table.create_table(4.3)
            end.to output("Please enter a positive, whole integer.\n").to_stdout
        end
      end

      context 'when a user inputs int -2 ' do
        it 'prints a warning message' do
            expect do
                @prime_table.create_table(-2)
                end.to output("Please enter a positive, whole integer.\n").to_stdout
        end
      end
    end
  end