using Graphs
using GraphPlot

function Circ(n::Integer, j...)
    y = 1
    firstrow = zeros(n)
    for x ∈ range(1,length(j))
        firstrow[1+j[x]] = 1
        firstrow[n-j[x]+1] = 1
    end
    A = [firstrow;]
    while y < n
        append!(A,circshift(firstrow,y))
        y += 1
    end
    A = reshape(A,(n,n))
    G = Graph(A)
    nodesize = [Graphs.outdegree(G, v) for v in Graphs.vertices(G)]
    nodelabel = 1:nv(G)
    nodelabelsize = nodesize
    gplot(G,layout = circular_layout,nodesize = nodesize, nodelabel = nodelabel)
    gplot(G,layout = circular_layout,nodesize = nodesize, nodelabel = nodelabel)
end
