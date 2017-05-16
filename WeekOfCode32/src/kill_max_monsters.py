"""Module for solution to https://www.hackerrank.com/contests/w32/challenges/fight-the-monsters."""

from functools import lru_cache

def getMaxMonsters(no_of_monsters, dmg, time, monsters):
    """
    Solve a variation of the 0/1 knapsack problem by finding the
    subsequence of 'monsters' that can be killed within a given 'time'.

    `monsters` is a sequence of non-negative integers representing hit points.

    `dmg` is a non-negative integer representing the dmg output of our weapon per second.

    Return a number representing how many monsters can be killed.

    >>> monsters = [16, 19, 7, 11, 23, 8, 16]
    >>> kill_max_monsters_in_given_time(monsters, 8, 6)
    4
    """
    """
    Solve a variation of the 0/1 knapsack problem by finding the
    subsequence of 'monsters' that can be killed within a given 'time'.

    `monsters` is a sequence of non-negative integers representing hit points.

    `dmg` is a non-negative integer representing the dmg output of our weapon per second.

    Return a number representing how many monsters can be killed.

    >>> monsters = [16, 19, 7, 11, 23, 8, 16]
    >>> getMaxMonsters(monsters, 8, 6)
    4
    """

    @lru_cache(maxsize=128, typed=False)
    def bestvalue(i, j):
        if i == 0: return 0
        weight = monsters[i - 1]
        if weight > j:
            return bestvalue(i - 1, j)
        else:
            return max(bestvalue(i - 1, j),
                       bestvalue(i - 1, j - weight) + 1)

    dmg_out = dmg * time
    j = dmg_out
    result = []
    for i in range(len(monsters), 0, -1):
        if bestvalue(i, j) != bestvalue(i - 1, j):
            result.append(monsters[i - 1])
            j -= monsters[i - 1]
    result.reverse()
    killed, monsters = bestvalue(len(monsters), dmg_out), result
    return killed
