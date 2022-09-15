# Connect Publishing Examples

RStudio Connect has implemented the ability to publish a wide variety of content formats over time.  

<img src="https://github.com/lagerratrobe/connect_examples/raw/main/formats_table.png" width="500" />

This project shows minimum examples of how to create and publish each of the examples shown below.

### R Formats
- [ ] RMarkdown
- [ ] Bookdown
- [ ] Plumber (API)

### Python Formats
- [ ] Dash
- [ ] Streamlit
- [ ] FastAPI
- [ ] Jupyter Lab
- [ ] Jupyter Notebook
- [ ] Bokeh
- [ ] Flask
- [ ] Reticulate _(I'm not sure how to classify this)_

### R and Python
- [ ] Quarto
- [ ] Tableau analytic extensions
- [ ] Pins
- [ ] Shiny

### Prerequisites
#### __1. Connect server with appropriate licensing__
In order to use these examples, your Connect server license must match the following.

* __Connect Base:__ suppoorts Shiny, RMarkdown, Quarto and Jupyter Lab/Notebooks
* __Connect Standard:__ adds support for "APIs and Interactive Python Products"  _(What exactly does this mean. ie "Pins", "Quarto", etc.)_

#### __2. Connect Server API keys__
You will need to have a Connect API key available and you will need to have the following environment variables set appropriately

  * CONNECT_SERVER = <connect_server_ip>
  * CONNECT_API_KEY = <connect_api_key>

This can be verified by using the R `Sys.getenv()` function.

```
> Sys.getenv("CONNECT_SERVER")
> Sys.getenv("CONNECT_API_KEY")
```

### Publish a Shiny app
<img src="https://github.com/lagerratrobe/connect_examples/raw/main/shiny_app_example.png" width="500" />
  * app code in `R/shiny`
  * publish with `publish_shiny_app.R` script
