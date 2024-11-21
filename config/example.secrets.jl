# Run Genie.Generator.write_secrets_file(). Add these above.
@show @__MODULE__

const GCAL_ID="Cogito";
const GSHEET_ID="Ergo";
const G_API="Sum";

# The below is auto-generated.
try
  Genie.Util.isprecompiling() || Genie.Secrets.secret_token!("3091c93f618344d6c763493abe00f6e2fae15ffeafffdba5f5e2c8a415ab02e6")
  println(G_API)
catch ex
  @error "Failed to generate secrets file: $ex"
end
