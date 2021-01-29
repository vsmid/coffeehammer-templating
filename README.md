# JavaScript HTML templating using CoffeeScript
The title itself sounds like the thing that really, really, really should not be yet somehow it really is.

## What is this witchcraft?
It is basically using [htmlhammer](https://github.com/vsmid/htmlhammer) templating library with [coffeescript](https://coffeescript.org/).

## Why shoud you care?
You really shouldn't but if you decide you do, your html templates could look something like this:
```coffeescript
import { div, h1, h2, hr, span, a, br } from "https://unpkg.com/htmlhammer?module"

Movie = ({title, creators, stars, about, imdb}) ->
    [
        h1 title
        hr style: 
            height: "2px"
            backgroundColor: "grey"
        h2 "Creators"
        div name for name in creators
        h2 "Info"
        span [
            div "Year: #{about.year}"
            div "Stars: #{about.stars}"
            div "Genres: #{about.genres.join ", "}"
        ]
        h2 "Stars"
        div name for name in stars
        br
        a href: imdb, "IMDb"
    ]
```

[Movie.coffee](./src/Movie.coffee)

## Run application locally
Clone this repo and start any http server(live-server, serve, bsync...) in the root of the project. It should run [index.html](./index.html) file.

## Conclusion
Any half decent human being deserves to write HTML in JavaScript without using a bunch of fancy tools and software. [htmlhammer](https://github.com/vsmid/htmlhammer) used with JavaScript is quite nice already(my humble and very irrelevant opinion ;-)) but combined with [coffeescript](https://coffeescript.org/) it really goes one step further.
