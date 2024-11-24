# Converted using Genie.Renderer.Html.html_to_julia("app/cal.jl.html")
function cal(_class)
    [
        iframe(
            height="100%",
            scrolling="no",
            htmlsourceindent="2",
            style="border: 0",
            src="https://calendar.google.com/calendar/embed?showPrint=0&src=$(Genie.Loader.GCAL_ID)&ctz=America%2FEdmonton",
            width="100%",
            frameborder="0",
            
            class=_class
        )
    ]
end
