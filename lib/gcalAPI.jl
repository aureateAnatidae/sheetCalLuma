function gcalEventList()
    response = HTTP.request("GET", 
        "https://www.googleapis.com/calendar/v3/calendars/$(Genie.Loader.GCAL_ID)/events",
        headers = [
            "X-goog-api-key" => Genie.Loader.G_API
        ],
        verbose=3
    )
    events = JSON3.read(response.body)
    @show events
end