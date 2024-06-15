#import "/packages.typ": *

// applies the template
// the show rule essentially passes the entire document into the `notebook` function. 
#show: notebook.with(
  team-name: "53E", // TODO: put your team name here
  season: "High Stakes",
  year: "2024-2025",
  theme: radial-theme, // TODO: change the theme to one you like
)

#include "./frontmatter.typ"

#include "./entries/entries.typ"

#include "./appendix.typ"
