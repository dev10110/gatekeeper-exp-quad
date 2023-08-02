using Pkg;
Pkg.add("PackageCompiler")
using PackageCompiler

pkgs = [
        "DifferentialEquations",
       ]

println("ABOUT TO START CREATE SYSIMAGE")
create_sysimage(pkgs, sysimage_path="/root/JuliaSysImage.so", precompile_execution_file="/root/precompile_julia.jl")
println("DONE CREATING SYSIMAGE")
