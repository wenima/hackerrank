"""Tests for https://www.hackerrank.com/contests/w32/challenges/duplication."""

import pytest


TEST = [
    ('ccaccbbbaccccca', '15', 2),
    ('', 0, 0),
]

@pytest.mark.parametrize("s, l, result", TEST)
def test_build_binary_string(s, l, result):
    """Test that the correct number of sets is returned."""
    from geometrick_trick import geometricTrick
    assert geometricTrick(s, l) == result
