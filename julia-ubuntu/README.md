## `julia` docker image (for data-science + machine-learning)
***

Setup a latest verion of `julia` REPL with data-science + ML libraries on **Ubuntu:Bionic 18.04 LTE** <font size="1">(Base Image)</font>

> Pre build image is uploaded on DockerHub for download <br>
*link*: https://hub.docker.com/r/ppatel26/ml-julia <br>
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
1. [Clustering](https://github.com/JuliaStats/Clustering.jl)<br>
Methods for data clustering and evaluation of clustering quality.

2. [DecisionTree](https://github.com/bensadeghi/DecisionTree.jl)<br>
Julia implementation of Decision Tree (CART) and Random Forest algorithms

3. [Flux](https://github.com/FluxML/Flux.jl)<br>
Flux is an elegant approach to machine learning. It's a 100% pure-Julia stack, and provides lightweight abstractions on top of Julia's native GPU and AD support

4. [Knet](https://github.com/denizyuret/Knet.jl)<br>
Deep learning framework implemented in Julia

5. [Lathe](https://github.com/emmettgb/Lathe.jl)<br>
Lathe.jl is an all-in-one package for predictive modeling in Julia. It comes packaged with a Stats Library, DataFrame tools, Preprocessing, Machine-Learning Models, and Model Validation.

6. [ScikitLearn](https://github.com/cstjean/ScikitLearn.jl)<br>
ScikitLearn.jl implements the popular scikit-learn interface and algorithms in Julia

7. [MLDatasets](https://github.com/JuliaML/MLDatasets.jl)<br>
A common interface for accessing common Machine Learning (ML) datasets

8. [MLDataUtils](https://github.com/JuliaML/MLDataUtils.jl)<br>
Utility package for generating, loading, partitioning, and processing Machine Learning datasets.

#### Data Science (+ Visuatization)

1. [DataFrames](https://juliadata.github.io/DataFrames.jl/stable/)<br>
Tools for working with tabular data in Julia.

2. [LightGraphs](https://github.com/JuliaGraphs/LightGraphs.jl)<br>
LightGraphs offers a set of simple, concrete graph implementations

3. [OnlineStats](https://github.com/joshday/OnlineStats.jl)<br>
Online algorithms are well suited for streaming data or when data is too large to hold in memory.

4. [Plots](https://github.com/JuliaPlots/Plots.jl)<br>
Plots is a visualization interface and toolset for Julia

5. [ODBC](https://github.com/JuliaDatabases/ODBC.jl)<br>
A Julia library for interacting with the ODBC API

#### Web Framework
1. [Genie](https://genieframework.com/)<br>
Genie is a full-stack MVC web framework which promotes a streamlined and efficient workflow for developing modern web applications in Julia

#### Finance 
1. [QuantEcon.jl](https://github.com/QuantEcon/QuantEcon.jl) <br>
Quantitative economic modeling in Julia

#### Scientific Computing
1. [DifferentialEquations](https://sciml.ai/) <br>
State-of-the-art differential equations ecosystem

2. [IterativeSolvers](https://github.com/JuliaMath/IterativeSolvers.jl) <br>
Iterative algorithms for solving linear systems, eigensystems, and singular vsalue problems.