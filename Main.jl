import Pkg
using Genie, GenieFramework
@genietools

Genie.loadapp()
Genie.Secrets.load()

include("app.jl")

route("/cal") do
    include("app/cal.jl")
    cal()
end

up(8000, async=true)
#include("app/cal.jl")
