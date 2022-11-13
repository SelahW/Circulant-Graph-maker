using Graphs
using GraphPlot
using LinearAlgebra

function Circ(n::Integer, j...)
    y = 1
    firstrow = zeros(n)
    for x ∈ (1:length(j))
        firstrow[1+j[x]] = 1
        firstrow[n-j[x]+1] = 1
    end
    A = [firstrow;]
    d = count(i -> (i >= 1), A)
    while y < n
        append!(A, circshift(firstrow, y))
        y += 1
    end
    A = reshape(A, (n, n))
    Laplacian = -A + (d * Matrix(I, n, n))
    Laplacian = Laplacian[1:end.!=2, 1:end.!=2]
    G = Graph(A)
    println("Number of spanning trees: ", trunc(det(Laplacian)))
    nodesize = [Graphs.outdegree(G, v) for v in Graphs.vertices(G)]
    nodelabel = 1:nv(G)
    nodelabelsize = nodesize
    gplot(
        G,
        layout = circular_layout,
        nodesize = nodesize,
        nodelabel = nodelabel,
        nodelabelsize = nodelabelsize,
    )
end
