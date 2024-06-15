#import "/packages.typ": *
#import components: *

// The show rule passes all content in this file into the `create-body-entry` function.
// This just means that we don't need an extra level of indentation when writing this entry.
#show: create-body-entry.with(
  title: "Example Entry",
  type: "identify",
  date: datetime(year: 2024, month: 1, day: 1),
)

Here's some content in this entry.


Here's an example of how you'd create a pro-con table:

#pro-con(
  pros: [
  - pro number 1
  - pro number 2
  - pro number 3
  ],
  cons: [
  - con number 1
  - con number 2
  - con number 3
  ]
)

Now we'll generate 50 words of filler text!

#lorem(50)
