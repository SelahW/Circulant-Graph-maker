# Circulant-Graph-maker
`Circ(n,j...)` function creates a circulant graph with n vertices, and connections between every j-th vertex.
j... is a tuple, so you can have multiple jumps, such as `Circ(10,1,2,3)`, etc. It also counts the number of spanning trees in the given graph.

### Example:
![image_2022-11-13_153216563](https://user-images.githubusercontent.com/90733137/201545606-368e607e-c696-4fc0-908b-9253abfba804.png)


### Dependencies:

- [Graphs.jl](https://github.com/JuliaGraphs/Graphs.jl)

- [GraphPlot.jl](https://github.com/JuliaGraphs/GraphPlot.jl)

- [LinearAlgebra.jl](https://github.com/JuliaLang/julia/tree/master/stdlib/LinearAlgebra)
