from calculator import maksimum, minimum, srednia

def test_maksimum():
    assert maksimum([4, 7, 2]) == 7
    assert maksimum([-5, 0, -10]) == 0
    assert maksimum([10, 20, 30, 40]) == 40

def test_minimum():
    assert minimum([5, 8, 3]) == 3
    assert minimum([-4, -1, -9]) == -9
    assert minimum([15, 25, 35, 45]) == 15

def test_srednia():
    assert srednia([10, 20, 30]) == 20
    assert srednia([-5, -15, -25]) == -15
    assert srednia([2, 4, 6, 8]) == 5
    assert srednia([1, 3, 5, 7, 9, 11]) == 6