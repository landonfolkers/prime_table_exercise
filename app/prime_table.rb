class PrimeTable
    def create_table(number)
        if check_number(number)
            prime_numbers = get_primes(number)
            rows = prime_numbers
            columns = prime_numbers

            print "     "
            columns.each {|column_num| print " %-3d " % column_num}
            print "\n\n"
            rows.each do |row_num|
            print "%-3d| " % row_num
            columns.each {|column_num| print " %-3d " % (column_num * row_num)}
            print "\n\n"
            end
        else
            puts 'Please enter a positive, whole integer.'
        end
    end

    def get_primes(number)
      primes = []
      limit = 10000000
      for i in 2 .. limit
        primes[i] = i
      end
      for i in 2 .. Math.sqrt(limit)
        if primes.compact.first(i).length < number
          next unless primes[i]
            (i*i).step(limit, i) do |j|
            primes[j] = nil
          end
        else
          break
        end
      end
      primes.compact.first(number)
    end

    def check_number(number)
        if number > 0 && number % 1 == 0
            return true
        end
        return false
    end
end