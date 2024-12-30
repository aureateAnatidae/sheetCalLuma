module App
using GenieFramework, HTTP, JSON3
@genietools

@app begin
    #@name "Event Sync"
    @in view = 0
    @in fc = "grey-7"
    @in cc = "grey-7"
    @in sc = "grey-7"
    @in lc = "grey-7"
    @onchange view begin
        @info view
    end
    
    @in sync = -1
    @in SYN = "grey-7"
    @in CAL = "grey-7"
    @in SHE = "grey-7"
    @in LUM = "grey-7"
    @onchange sync begin
        @info sync
    end
    @in sync_disabled = true
    @in sync_loading = false
end

# Need a better solution for this
function reloadCode()
    include("app/nav.jl")
    include("app/cal.jl")
    include("app/sheet.jl")
    include("app/syncto.jl")
    
    include("lib/gcalAPI.jl")
end

# Set defaults
function setDefs()
    global model = @init
    
    model.sync = -1
    model.SYN = "grey-7"
    model.CAL = "grey-7"
    model.SHE = "grey-7"
    model.LUM = "grey-7"
    
    model.sync_disabled = true
    model.sync_loading = false
    
    #@show model
end

function embed()
    [
        Html.div(class="col", @iif("view == 1"), cal("align-center")),
        Html.div(class="col", @iif("view == 2"), sheet("align-center"))
    ]
end

function ui()
    reloadCode()
    gcalEventList()
    setDefs()
    return StippleUI.layout(
        cell(class="absolute-full column", [
            col(class="justify-center items-center", [
                nav(),
                embed(),
                syncMenu()
                ])
        ])
    )
end


@page("/", ui)
end