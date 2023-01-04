class PrimeTable
    def create_table(number)
        prime_numbers = get_primes(number)
        p prime_numbers
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
end

PrimeTable.new.create_table(7)