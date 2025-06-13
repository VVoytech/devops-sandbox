import pandas as pd
import numpy as np

def dodawanie(liczba1, liczba2):
    return np.add(liczba1, liczba2)

def odejmowanie(liczba1, liczba2):
    return np.subtract(liczba1, liczba2)

def mnozenie(liczba1, liczba2):
    return np.multiply(liczba1, liczba2)

def dzielenie(liczba1, liczba2):
    if liczba2 != 0:
        return np.divide(liczba1, liczba2)
    else:
        return "Błąd: dzielenie przez zero!"

def srednia(liczby):
    df = pd.DataFrame({'liczby': liczby})
    return df['liczby'].mean()

def maksimum(liczby):
    df = pd.DataFrame({'liczby': liczby})
    return df['liczby'].max()

def minimum(liczby):
    df = pd.DataFrame({'liczby': liczby})
    return df['liczby'].min()