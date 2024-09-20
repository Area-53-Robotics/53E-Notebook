
#import "/utils.typ"
#import "/packages.typ": notebookinator, codetastic
#import notebookinator: *
#import themes.radial.components: *
#import codetastic: qrcode

#let label(label: "", size: 0.7em) = {
  let data = entry-type-metadata.at(label)
  let colored-image = utils.change-icon-color(raw-icon: data.icon, fill: white)

  box(fill: data.color, outset: 3pt, radius: 1.5pt)[
    #set align(center + horizon)
    #image.decode(colored-image, height: size)
  ]
}

#create-frontmatter-entry(
  title: "About This Notebook",
)[
This notebook was written with a programming language called Typst. We write
instructions about formatting in Typst, and they they are rendered into a pdf.
Here are some examples of what that looks like:

```typ
  Just some ordinary text // Turns into text

  #grid( // Creates a grid layout
    columns: (1fr, 1fr),
    gutter: 20pt,
    pro-con(
      pros: [ // Turns into a table of pros and cons (appears on the right side)
        - good
        - better ],
      cons: [
        - bad
        - worse
      ],
    ),
    [
      Some content on the left side *Bold content on the left side*
    ],
  )
  ```

This would would render into:

Just some ordinary text // Turns into text

#grid( // Creates a grid layout
  columns: (1fr, 1fr),
  gutter: 20pt,
  pro-con(
    pros: [ // Turns into a table of pros and cons (appears on the right side)
      - good
      - better ],
    cons: [
      - bad
      - worse
    ],
  ),
  [
    Some content on the left side

    *Bold content on the left side*
  ],
)

== Source Code

#grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  [
    The source code can be found here: #link("https://github.com/Area-53-Robotics/53E-Notebook").
    Alternatively, you can use the QR code to the left.
  ],
  qrcode("https://github.com/Area-53-Robotics/53E-Notebook", size: 5pt),
)

#colbreak()

= Why Digital?

This is our fourth year using a digital notebook, and we ﬁnd that it improves the experience for both the writer and the viewer in several ways:
- Increased neatness
- Better, more modern tooling
- Styling is deﬁned in one location


== Why Typst?

Typst give us a whole host of beneﬁts:

- Management and collaboration with git or the online editor
- Veriﬁcation of history with git
- Native scripting support
- Native support for rendering math
- Native support for rendering code
- Personalization
This gives us many more capabilities than something like Google Docs/Slides would.


== How to Read Entries

Entries all have a type, which is displayed in the top left corner, as well as
in the table of contents. Most types correspond with a step in the engineering
design process, but some do not.

Here are the existing types:

#let spacing = 3pt

#stack(
  spacing: 10pt,
  [#box(baseline: 30%, label(label: "identify", size: 1.7em)) #h(10pt) *Identify the problem*],
  [#box(baseline: 30%, label(label: "brainstorm", size: 1.7em)) #h(10pt) *Brainstorm possible solutions*],
  [#box(baseline: 30%, label(label: "decide", size: 1.7em)) #h(10pt) *Decide on the optimal solution*],
  [#box(baseline: 30%, label(label: "build", size: 1.7em)) #h(10pt) *Build the solution*],
  [#box(baseline: 30%, label(label: "program", size: 1.7em)) #h(10pt) *Program the solution*],
  [#box(baseline: 30%, label(label: "test", size: 1.7em)) #h(10pt) *Test the solution*],
  [#box(baseline: 30%, label(label: "management", size: 1.7em)) #h(10pt) *Team management*],
  [#box(baseline: 30%, label(label: "notebook", size: 1.7em)) #h(10pt) *Notebook Metadata*],
)

]


#create-frontmatter-entry(
  title: "Our Team",
)[ 
  Our team is a diverse, student-led, and hardworking robotics team based in Greenbelt, Maryland. Our team was founded in 2010. We strive for greatness and aim to grow and learn from adversity.
  #team(
    (
      name: "Alan Morales",
      picture: image("image.jpg", width: 90pt, height: 90pt),
      about: [
        - 12th Grade
        - Team Leader
        - Driver
        - Builder
        - Guitarist
      ],
    ),
    (
      name: "John Kelley",
      picture: image("image.jpg", width: 90pt, height: 90pt),
      about: [
        - 11th Grader
        - Builder
        - Cellist
        - "Bass Guitarist"
      ],
    ),
    (
      name: "Joy Oladimeji",
      picture: image("image.jpy", width: 90pt, height: 90pt),
      about: [
        - 11th Grade
        - Builder
        - Programmer
        - Guitarist
        - Vocalist
      ],
    ),
    (
      name: "Meghana Noojipady",
      picture: image("image.jpg", width: 90pt, height: 90pt),
      about: [
        - 10th Grade
        - Programmer
        - Auton Strategist
        - Pianist
        - Vocalist 
      ],
    ),
    (
      name: "Violet Ridge",
      picture: image("image.jpg", width: 90pt, height: 90pt),
      about: [
        - 10th Grade
        - Builder
        - Drummer
        
      ],
    ),
    (
      name: "Loriel Nickel",
      picture: image("./assets/mugshots/violet.jpg", width: 90pt, height: 90pt),
      about: [
        - 9th Grade
        - Builder
        - Kalimba Player
      ],
    ),
  )
]

  )
]

#create-frontmatter-entry(title: "Table of Contents")[
  #toc()
]

