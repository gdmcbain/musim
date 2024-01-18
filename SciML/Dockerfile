FROM julia:1.10.0
RUN julia -e 'using Pkg; Pkg.add(["DataFrames", "CSV", "Plots", "StatsPlots"])'
RUN julia -e 'using Pkg; Pkg.add(["ModelingToolkit", "DifferentialEquations"])'
RUN julia -e 'using Pkg; Pkg.add(["Optimization", "OptimizationNLopt", "ForwardDiff"])'
