{ div, h1, h2, hr, span, a, br } = htmlhammer

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
            div "Genres: #{about.genres.join ', '}"
        ]
        h2 "Stars"
        div name for name in stars
        br
        a href: imdb, "IMDb"
    ]

export { Movie }