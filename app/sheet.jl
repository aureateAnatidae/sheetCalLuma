function sheet(_class)
    [
        iframe(
            htmlsourceindent="2",
            height="100%",
            width="100%",
            src="https://docs.google.com/spreadsheets/d/e/$(Genie.Loader.GSHEET_ID)/pubhtml?widget=true&headers=false",
        
            class=_class
        ),
        
    ]
end