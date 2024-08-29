#import "/packages.typ": *

// applies the template
// the show rule essentially passes the entire document into the `notebook` function. 
#show: notebook.with(
  team-name: "53E", 
  season: "High Stakes",
  year: "2024-2025",
  theme: radial-theme, 
  cover: align(center + horizon)[
    #text(size: 24pt, font: "Tele-Marines")[
      #text(size:30pt)[
        Engineering Notebook
      ]

      #image("./photos/53E_logo.png", height: 70%)
      2024-2025
      #line(length: 50%, stroke: (thickness: 2.5pt, cap: "round"))
      High Stakes
    ]
  ]
)

#include "./frontmatter.typ"

#include "./entries/entries.typ"

#include "./appendix.typ"
