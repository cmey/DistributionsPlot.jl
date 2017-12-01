# Times out with the default limit of 30 seconds (package load time, precompilation, etc.).
const JUPYTER_BIN = readstring(open(joinpath(Pkg.dir("IJulia"), "deps", "JUPYTER")))
const CMD = `$JUPYTER_BIN nbconvert --ExecutePreprocessor.timeout=600 --to html --output-dir=. --stdout --execute src/DistributionsPlot.jl.ipynb`
run(CMD)

