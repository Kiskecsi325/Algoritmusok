MODULO = 10 ** 8  # To compute the result modulo 10^8


def count_non_overlapping_subsets(classes):
    classes.sort(key=lambda x: (x[1], x[0]))

    n = len(classes)
    dp = [0] * (n + 1)
    dp[0] = 1

    latest_non_overlapping = [-1] * n
    for i in range(n):
        low, high = 0, i - 1
        while low <= high:
            mid = (low + high) // 2
            if classes[mid][1] <= classes[i][0]:
                latest_non_overlapping[i] = mid
                low = mid + 1
            else:
                high = mid - 1

    for i in range(1, n + 1):
        exclude = dp[i - 1]
        include = dp[latest_non_overlapping[i - 1] + 1] if latest_non_overlapping[i - 1] != -1 else 1
        dp[i] = (exclude + include) % MODULO

    return (dp[n] - 1) % MODULO

if __name__ == "__main__":
    results = []
    while True:
        n = int(input())
        if n == -1:
            break
        classes = [tuple(map(int, input().split())) for _ in range(n)]
        result = count_non_overlapping_subsets(classes)
        # Format result with leading zeros
        results.append(f"{result:08d}")
    print("\n".join(results))
