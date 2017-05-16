"""Tests for https://www.hackerrank.com/contests/w32/challenges/duplication."""

import pytest


TEST = [
    (7, 8, 6, [16, 19, 7, 11, 23, 8, 16], 4),
]

@pytest.mark.parametrize("n, d, t, m, result", TEST)
def test_kill_monsters(n, d, t, m, result):
    """Test that a function returns the correct result."""
    from kill_max_monsters import getMaxMonsters
    assert getMaxMonsters(m, d, t, m) == result
