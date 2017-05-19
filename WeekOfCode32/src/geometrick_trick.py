"""Tests for https://www.hackerrank.com/contests/w32/challenges/geometric-trick."""

def geometricTrick(*args):
    """Return the number of possible, unique triples of i, j k within a given string
    made up of a set (a, b, c) following the restraints outlined in the above link."""
    #find indeces for a, b and c
    s, n = args
    idx_i = []
    idx_j = []
    idx_k = []

    for idx, char in enumerate(s):
        if char == 'a':
            idx_i.append(idx)
        elif char == 'b':
            idx_j.append(idx)
        elif char == 'c':
            idx_k.append(idx)

            triples = []

            #could be more efficient by checking which has the lowest len, then 2nd lowest; also early exit?
    for j in idx_j:
        for i in idx_i:
            if i * 2 + 1 > j ** 2: break
            k = (j + 1) ** 2 / (i + 1)
            if k.is_integer():
                if k - 1 in idx_k and (i, j, k - 1) not in triples:
                    triples.append((i, j, int(k - 1)))
    return len(triples)
