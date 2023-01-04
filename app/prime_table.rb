class PrimeTable
    def create_table(number)
        prime_numbers = get_primes()
        p prime_numbers
    end

    def get_primes()
      primes = []
      limit = 10000000
      for i in 2 .. limit
        primes[i] = i
      end
      for i in 2 .. Math.sqrt(limit)
        next unless primes[i]
          (i*i).step(limit, i) do |j|
            primes[j] = nil
        end
      end
      primes.compact.first(7)
    end
end

PrimeTable.new.create_table(7)