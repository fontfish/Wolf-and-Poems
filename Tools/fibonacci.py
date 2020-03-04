# From my Fibonacci bash script, converted into Python.
smlFib = input('First number:')
bigFib = input('Second number:')
fibRep = input('Number of repeats:')

times = 1
repeat = int(fibRep) + 1

while times <= repeat:
    newFib = int(smlFib) + int(bigFib)
    smlFib = bigFib
    bigFib = newFib
    times = times + 1

print(smlFib, bigFib)