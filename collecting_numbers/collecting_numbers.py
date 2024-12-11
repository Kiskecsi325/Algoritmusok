def count_rounds(n, arr):
    # Pozíciók meghatározása az index gyors eléréséhez
    positions = [0] * (n + 1)
    for index, value in enumerate(arr):
        positions[value] = index

    # Körök számítása
    rounds = 1
    for i in range(2, n + 1):
        if positions[i] < positions[i - 1]:
            rounds += 1
    return rounds

# Bemenet olvasása
if __name__ == "__main__":
    n = int(input())
    arr = list(map(int, input().split()))
    print(count_rounds(n, arr))
