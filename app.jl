module App

using GenieFramework
include("app/nav.jl")

@app begin
    @in view = 0
    @in fc = "grey-7"
    @in cc = "grey-7"
    @in sc = "grey-7"
    @in lc = "grey-7"
    @onchange view begin
        @info view
        fc = "grey-7"; cc = "grey-7"; sc = "grey-7"; lc = "grey-7"
    end
end

function ui()
    [
        nav()
    ]
end

ui
end