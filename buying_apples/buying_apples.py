def minimum_cost_to_buy_apples(test_cases):
    results = []

    for case in test_cases:
        n, k, prices = case

        dp = [float('inf')] * (k + 1)
        dp[0] = 0

        for i in range(1, k + 1):
            if prices[i - 1] != -1:
                for j in range(i, k + 1):
                    dp[j] = min(dp[j], dp[j - i] + prices[i - 1])

        if dp[k] == float('inf'):
            results.append(-1)
        else:
            results.append(dp[k])

    return results

if __name__ == "__main__":
    t = int(input())
    test_cases = []

    for _ in range(t):
        n, k = map(int, input().split())
        prices = list(map(int, input().split()))
        test_cases.append((n, k, prices))

    results = minimum_cost_to_buy_apples(test_cases)

    for result in results:
        print(result)
