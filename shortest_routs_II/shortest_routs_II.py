def floyd_warshall(n, edges, queries):
    INF = float('inf')
    dist = [[INF] * n for _ in range(n)]

    for i in range(n):
        dist[i][i] = 0

    for a, b, c in edges:
        dist[a - 1][b - 1] = min(dist[a - 1][b - 1], c)
        dist[b - 1][a - 1] = min(dist[b - 1][a - 1], c)

    for k in range(n):
        for i in range(n):
            for j in range(n):
                if dist[i][k] < INF and dist[k][j] < INF:
                    dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j])


    results = []
    for a, b in queries:
        shortest = dist[a - 1][b - 1]
        results.append(shortest if shortest < INF else -1)

    return results

if __name__ == "__main__":
    n, m, q = map(int, input().split())
    edges = []
    for _ in range(m):
        a, b, c = map(int, input().split())
        edges.append((a, b, c))

    queries = []
    for _ in range(q):
        a, b = map(int, input().split())
        queries.append((a, b))

    results = floyd_warshall(n, edges, queries)
    print("\n".join(map(str, results)))
