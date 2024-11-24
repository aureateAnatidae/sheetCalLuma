module App

using GenieFramework, HTTP
@genietools

include("app/nav.jl")
include("app/cal.jl")
include("app/sheet.jl")

include("lib/gcalAPI.jl")

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
    [
        Html.div(class="col", @iif("view == 1"), cal("align-center")),
        Html.div(class="col", @iif("view == 2"), sheet("align-center"))
    ]
end

function ui()
    #gcalEventList()
    StippleUI.layout(
        cell(class="absolute-full column", [
            col(class="justify-center items-center", [
                nav(),
                embed()
                ])
            ])
    )
end


@page("/", ui)
end