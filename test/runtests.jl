# Times out with the default limit of 30 seconds (package load time, precompilation, etc.).
const CMD = `jupyter nbconvert --ExecutePreprocessor.timeout=600 --to html --output-dir=. --stdout --execute src/DistributionsPlot.jl.ipynb`
run(CMD)

