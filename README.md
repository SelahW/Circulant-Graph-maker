# Circulant-Graph-maker
`Circ(n,j...)` function creates a circulant graph with n vertices, and connections between every j-th vertex.
j... is a tuple, so you can have multiple jumps, such as `Circ(10,1,2,3)`, etc.

### Dependencies:

- [Graphs.jl](https://github.com/JuliaGraphs/Graphs.jl)

- [GraphPlot.jl](https://github.com/JuliaGraphs/GraphPlot.jl)

- [LinearAlgebra.jl](https://github.com/JuliaLang/julia/tree/master/stdlib/LinearAlgebra)

