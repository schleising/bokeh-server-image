#!/bin/zsh
docker run -p 5006:5006 --name bokeh-server --network schleising-net -v /Users/steve/Documents/Coding/Python/website/mainsite/charts/BokehPlots/:/code/ bokeh-server-image
