def superFatorial(n)
  fact = 1
  if n == 0
    return 0
  end

  for i in 1..(n)
    for j in 1..(i)
      fact *= j
    end
  end   

  return fact
end

def multiplyNumbersDin(n, m)
  if m == 1
    return 1
  elsif n == 1
    return n*multiplyNumbersDin(m - 1, m - 1)
  else 
    return n*multiplyNumbersDin(n - 1, m)
  end
end

def superFatorialDin(n)
  multiplyNumbersDin n, n
end

print "Digite um número: "
n = gets.strip.to_i

before = Time.now()
fact = superFatorial n
after = Time.now()

puts "\nFatorial => #{fact}"
puts "\nTempo de execução em milissegundos (normal): #{(after - before) * 1000}"

before = Time.now()
fact = superFatorialDin n
after = Time.now()

puts "\nFatorial => #{fact}"
puts "\nTempo de execução em milissegundos (dinâmica): #{(after - before) * 1000}"