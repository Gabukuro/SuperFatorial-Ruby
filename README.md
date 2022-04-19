## Super Fatorial

O super fatorial de um número N é definida pelo produto dos N primeiros fatoriais de N. Assim, o super fatorial de 4 é sf(4) = 1! * 2! * 3! * 4! = 288.

Comparação de tempo de execução por abordagem:

| Número   |Normal   |Dinâmica |
|----------|---------|---------|
| 4        | 0.01942 | 0.00768 |
| 10       | 0.04152 | 0.02068 |
| 20       | 0.15451 | 0.19786 |
| 50       | 5.75166 | 1.03861 |


## Análise de Complexidade 

### Abordagem Normal

A complexiddade para este algoritmo é conhecida como quadrática, denominada por O(n^2). Vamos dar uma olhada na função: 

```ruby
def superFatorial(n)
  fact = 1

  for i in 1..(n)
    for j in 1..(i)
      fact *= j
    end
  end   

  return fact
end
```

Neste trecho de código podemos observar a existência de um loop dentro de outro loop, ambos iteram todos os itens do valor de entrada da função.

### Abordagem Dinâmica

Como a abordagem dinâmica conta com a implementação de uma função recursiva, a sua complexidade é equivalente ao número de chamadas da função recursiva. Desta forma O(n+m), já que neste caso m recebeu o valor de n, ficando O(2n).

```ruby 
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
``` 