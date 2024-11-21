import Pkg
using Genie, GenieFramework
@genietools

Genie.loadapp()
Genie.Secrets.load()

route("/cal") do
    include("app/cal.jl")
end

route("/") do
    #include("app.jl")
    include("app/embed.jl")
end
