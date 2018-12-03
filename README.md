This repository offers a bare-bone Poisson node extension for ForneyLab, in an external package called `Herring`. In order to start extending this package follow the instructions below.

Navigate to the directory for packages under development.
```
$ cd .julia/dev
```
Clone the Herring package from GitHub.
```
$ git clone git@github.com:ThijsvdLaar/Herring.jl.git Herring
```
Navigate to the package directory and start Julia (v1.0).
```
$ cd Herring
$ julia
```
Enter the package REPL-mode and activate the package environment from the Herring manifest.
```
julia> ]
(v1.0) pkg> activate .
```
Run the Herring tests and watch them fail (be sure to execute this step with sorrow and determiniation).
```
(Herring) pkg> test Herring
```
Open `.julia/dev/Herring` with your editor of choice and start crackin'.
