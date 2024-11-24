import Pkg
using Genie, GenieFramework, HTTP
@genietools

Genie.loadapp()
Genie.Secrets.load()

include("app.jl")
include("app/sheet.jl")
include("app/cal.jl")

route("/cal") do
    cal()
end

route("/sheet") do
    sheet()
end

up(8000, async=true)
#include("app/cal.jl")
