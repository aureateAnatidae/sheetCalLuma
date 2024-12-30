import Pkg
using Genie, GenieFramework, GenieAutoReload, HTTP, JSON3
@genietools

Genie.loadapp()
Genie.Secrets.load()

up(8000, async=true)
