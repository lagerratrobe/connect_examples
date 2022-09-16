# publish_shiny_app.R
library(rsconnect)
library(connectapi)

# Define a client to publish to
client <- connect(
  server = Sys.getenv("CONNECT_SERVER"),
  api_key = Sys.getenv("CONNECT_API_KEY")
)

# Create a manifest file for specify app
rsconnect::writeManifest(appDir = "R/shiny",
                         appPrimaryDoc = "app.R",
                         verbose = TRUE)

# Create a .tar.gz to use as bundle
tar(tarfile = "shiny_app.tar.gz",
    files = c("R/shiny/app.R", "R/shiny/manifest.json"),
    compression = "gzip",
    tar = "tar")

# Deploy the bundle to Connect
connectapi::deploy(client,
                   name = "publish_shiny_example",
                   bundle_path("shiny_app.tar.gz"))
