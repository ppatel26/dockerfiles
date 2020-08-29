## `julia` docker image (for data-science + machine-learning)
***

Setup a latest verion of `julia` REPL with data-science + ML libraries on **Ubuntu:Bionic 18.04 LTE** <font size="1">(Base Image)</font>

> Pre build image is uploaded on DockerHub for download <br>
*link*: <a href="https://hub.docker.com/r/ppatel26/ml-julia" target="_blank">https://hub.docker.com/r/ppatel26/ml-julia</a> <br> <br>
`> docker pull ppatel26/ml-julia`

<br>

Following `julia` packages are added,

```
Clustering v0.14.1
DataFrames v0.21.7
DecisionTree v0.10.9
DifferentialEquations v6.15.0
Flux v0.11.1
Genie v1.1.0
IterativeSolvers v0.8.4
Knet v1.4.0
Lathe v0.1.1
LightGraphs v1.3.3
MLDataUtils v0.5.2
MLDatasets v0.5.2
ODBC v1.0.3
OnlineStats v1.5.3
Plots v1.6.0
QuantEcon v0.16.2
ScikitLearn v0.6.2
```

### Building 

Use the code below to build the dockerimage (make sure you are in the same folder while you run the build command)

`> docker build -t ds-ml/julia:1.0 .`

Use the code below to start the image into a `bash` terminal

`> docker run --rm -it ds-ml/julia /bin/bash`

<br>

### Details 
***

`Manifest.toml` and `Project.toml` are locally generated `toml` files that record keeps package versions + dependencies 


#### Machine Learning 
1. <a href="https://github.com/JuliaStats/Clustering.jl" target="_blank">Clustering</a> <br>
Methods for data clustering and evaluation of clustering quality.

2. <a href="https://github.com/bensadeghi/DecisionTree.jl" target="_blank">DecisionTree</a> <br>
Julia implementation of Decision Tree (CART) and Random Forest algorithms

3. <a href="https://github.com/FluxML/Flux.jl" target="_blank">Flux</a> <br> 
Flux is an elegant approach to machine learning. It's a 100% pure-Julia stack, and provides lightweight abstractions on top of Julia's native GPU and AD support

4. <a href="https://github.com/denizyuret/Knet.jl" target="_blank">Knet</a> <br>
Deep learning framework implemented in Julia

5. <a href="https://github.com/emmettgb/Lathe.jl" target="_blank">Lathe</a> <br>
Lathe.jl is an all-in-one package for predictive modeling in Julia. It comes packaged with a Stats Library, DataFrame tools, Preprocessing, Machine-Learning Models, and Model Validation.

6. <a href="https://github.com/cstjean/ScikitLearn.jl" target="_blank">ScikitLearn</a> <br>   ScikitLearn.jl implements the popular scikit-learn interface and algorithms in Julia

7. <a href="https://github.com/JuliaML/MLDatasets.jl" target="_blank">MLDatasets</a> <br> 
A common interface for accessing common Machine Learning (ML) datasets

8. <a href="https://github.com/JuliaML/MLDataUtils.jl" target="_blank">MLDataUtils</a> <br>
Utility package for generating, loading, partitioning, and processing Machine Learning datasets.

#### Data Science (+ Visuatization)

1. <a href="https://juliadata.github.io/DataFrames.jl/stable/" target="_blank">DataFrames</a> <br>  Tools for working with tabular data in Julia.

2. <a href="https://github.com/JuliaGraphs/LightGraphs.jl" target="_blank">LightGraphs</a> <br>  LightGraphs offers a set of simple, concrete graph implementations

3. <a href="https://github.com/joshday/OnlineStats.jl" target="_blank">OnlineStats</a> <br> Online algorithms are well suited for streaming data or when data is too large to hold in memory.

4. <a href="https://github.com/JuliaPlots/Plots.jl" target="_blank">Plots</a> <br> 
Plots is a visualization interface and toolset for Julia

5. <a href="https://github.com/JuliaDatabases/ODBC.jl" target="_blank">ODBC</a> <br> 
A Julia library for interacting with the ODBC API

#### Web Framework
1. <a href="https://genieframework.com/" target="_blank">Genie</a> <br> 
Genie is a full-stack MVC web framework which promotes a streamlined and efficient workflow for developing modern web applications in Julia

#### Finance 
1. <a href="https://github.com/QuantEcon/QuantEcon.jl" target="_blank">QuantEcon</a> <br> 
Quantitative economic modeling in Julia

#### Scientific Computing
1. <a href="https://sciml.ai/" target="_blank">DifferentialEquations</a> <br> 
State-of-the-art differential equations ecosystem

2. <a href="https://github.com/JuliaMath/IterativeSolvers.jl" target="_blank">IterativeSolvers</a> <br> 
Iterative algorithms for solving linear systems, eigensystems, and singular vsalue problems.
