ENV["JULIA_PKG_PRECOMPILE_AUTO"]=0

using Pkg;
Pkg.add("PackageCompiler")
Pkg.add([
        "DifferentialEquations"
        ])

using PackageCompiler

pkgs = [
        "DifferentialEquations",
       ]

println("ABOUT TO START CREATE SYSIMAGE")
create_sysimage(pkgs, sysimage_path="/root/JuliaSysImage.so")
println("DONE CREATING SYSIMAGE")
