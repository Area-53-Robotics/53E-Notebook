#import "template/entries.typ": *
#import "template/components/components.typ": *
#import "@preview/codetastic:0.2.2": qrcode

#page(
  header: [
    #nb_title([About This Notebook])
  ],
  footer: [#nb_frontmatter_footer()],
  [

  This notebook was written with a programming language called Typst. We write
  instructions about formatting in Typst, and they they are rendered into a pdf.
  Here are some examples of what that looks like:

  ```typ
                Just some ordinary text // Turns into text

                #grid( // Creates a grid layout
                  columns: (1fr,1fr),
                  gutter: 20pt,
                  nb_pro_con(pros: [ // Turns into a table of pros and cons (appears on the right side)
                     - good
                     - better
                  ], cons: [
                    - bad
                    - worse
                  ]),
                  [
                    Some content on the left side

                    *Bold content on the left side*
                  ]
                )
                ```
  This would would render into:

  Just some ordinary text // Turns into text

  #grid( // Creates a grid layout
    columns: (1fr, 1fr),
    gutter: 20pt,
    nb_pro_con(
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

  #nb_title[Source Code]

  #grid(
    columns: (1fr, 1fr),
    gutter: 20pt,
    [
      The source code can be found here: #link("https://github.com/Area-53-Robotics/53E-Notebook").
      Alternatively, you can use the QR code to the left.
    ],
    qrcode("https://github.com/Area-53-Robotics/53E-Notebook", size: 5pt),
  )

  = Why Digital?

  This is our third year using a digital notebook, and we find that it improves
  the experience for both the writer and the viewer in several ways:

  - Increased neatness
  - Better, more modern tooling
  - Styling is defined in one location

  = Why Typst?

  Typst give us a whole host of benefits:

  - Management and collaboration with git or the online editor
  - Verification of history with git
  - Native scripting support
  - Native support for rendering math
  - Native support for rendering code

  This gives us many more capabilities than something like Google Docs/Slides
  would.

  = How to Read Entries

  Entries all have a type, which is displayed in the top left corner, as well as
  in the table of contents. Most types correspond with a step in the engineering
  design process, but some do not.

  Here are the existing types:

  #box(baseline: 30%, nb_label(label: "identify", size: 1.7em)) #h(10pt) *Identify the problem*

  #v(5pt)

  #box(baseline: 30%, nb_label(label: "brainstorm", size: 1.7em)) #h(10pt) *Brainstorm possible solutions*

  #v(5pt)

  #box(baseline: 30%, nb_label(label: "decide", size: 1.7em)) #h(10pt) *Decide on the optimal solution*

  #v(5pt)

  #box(baseline: 30%, nb_label(label: "build", size: 1.7em)) #h(10pt) *Build the solution*

  #v(5pt)

  #box(baseline: 30%, nb_label(label: "program", size: 1.7em)) #h(10pt) *Program the solution*

  #v(5pt)

  #box(baseline: 30%, nb_label(label: "test", size: 1.7em)) #h(10pt) *Test the solution*

  #v(5pt)

  #box(baseline: 30%, nb_label(label: "management", size: 1.7em)) #h(10pt) *Team management*

  #v(5pt)

  #box(baseline: 30%, nb_label(label: "notebook", size: 1.7em)) #h(10pt) *Notebook Metadata*

  ],
)
