module App

using GenieFramework
@genietools

include("app/nav.jl")
include("app/cal.jl")

@app begin
    @in view = 1
    @in fc = "grey-7"
    @in cc = "grey-7"
    @in sc = "grey-7"
    @in lc = "grey-7"
    @onchange view begin
        @info view
    end
end

function embed()
    if "view" == 1
        return cal("align-center")
    end
    println("view")
    return h1("""GAH! "view" """)
end

function ui()
    cell([
        col(class="column-inline justify-center items-center", [
            nav(),
            
            Html.div(class="", @iif("view == 1"), cal("align-center"))
            ])
        ])
end


@page("/", ui)
#@page("/c", include("app/cal.jl"))
end