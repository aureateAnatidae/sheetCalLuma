module App
using Genie, GenieFramework

include("app/nav.jl")

Stipple.Layout.add_script("https://cdn.tailwindcss.com")

@genietools


@app begin
    @in view = "ALL"
    @onchange view begin
       @info view
    end
end

Genie.Secrets.load("config/secrets.jl")

function ui()
    [
        h1("{{view}}"),
        nav(:view)
    ]
end

route("/cal") do
    include("app/cal.jl")
end

@page("/", ui)
end