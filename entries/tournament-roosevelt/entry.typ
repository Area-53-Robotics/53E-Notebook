#import "@preview/diagraph:0.1.0": *
#import "/template/template.typ": *
#show:  create_entry.with(
  title: "Capital Beltway Challenge",
  type: "test",
  start_date: datetime(year: 2023, month: 12, day: 16), // TODO: fix date
)

= Qualification Matches

#nb_tournament(
  matches: ((
     match: "Q1",
      red_alliance: (teams: ("676D", "17760X"), score: 38),
      blue_alliance: (teams: ("53E", "3700A"), score: 38),
      won: false,
      auton: false,
      awp: false,
  ), 
  (
    match: "Q13", 
    red_alliance: (teams: ("53B", "9080R"), score: 119), 
    blue_alliance: (teams: ("20096G", "53E"), score: 89), 
    won: false, 
    auton: true,
    awp: false,
  ), 
  (
    match: "Q19", 
    red_alliance: (teams: ("53E, 7135D"), score: 121), 
    blue_alliance: (teams: ("9080S, 53C"), score: 50), 
    won: true, 
    auton: true,
    awp: false,
  ), 
  (
    match: "Q27", 
    red_alliance: (teams: ("53E, 5588R"), score: 4), 
    blue_alliance: (teams: ("9080C, 53A"), score: 154), 
    won: false, 
    auton: true,
    awp: false,
  ), 
  (
    match: "Q37", 
    red_alliance: (teams: ("5588E, 53D"), score: 101), 
    blue_alliance: (teams: ("23098A, 53E"), score: 64), 
    won: false, 
    auton: false,
    awp: false,
  ), 
  (
    match: "Q43", 
    red_alliance: (teams: ("53E, 9080H"), score: 138), 
    blue_alliance: (teams: ("5588H, 17760Y"), score: 21), 
    won: true, 
    auton: false,
    awp: false,
  ), 
)
)

= Alliance Selection

We were in 21st place in eliminations so the most we could do was hope for another team to choose us. In the beginning, 9080C reached out to us and showed interest in wanting to pair with us. However, they later ended up pairing with 53A. 

We had our best hopes to be picked by 53C and was then reached out to by team 9080H who picked us in the end. 

#raw-render[```dot
  digraph {
    rankdir=LR;
    start->"9080C picks us"
    "9080C picks us"->"53C picks us" [label = "no"]
    "9080C picks us"->"end" [label = "yes"]
    "53C picks us"->"9080H picks us" [label = "no"]
    "53C picks us"->"end" [label = "yes"]
    "9080H picks us"->"We pick 53C" [label = "no"]
    "9080H picks us"-> end [label = "yes"]
    "We pick 53C"->end

    start[shape=Mdiamond]
    end[shape=Msquare]
  }
```]

The above flow chart represents our decision making plan. In the end, 9080C picked 53A and 9080H ended up picking us. 

= Elimination Matches 

#nb_tournament(
  matches: (
(
      match: "R16 #8-1",
      red_alliance: (teams: ("9080H", "53E"), score: 154),
      blue_alliance: (teams: ("5588H", "5525A"), score: 62),
      won: true,
      auton: true,
      awp: false,
),
(
      match: "QF #4-1",
      red_alliance: (teams: ("7135D", "9080S"), score: 66),
      blue_alliance: (teams: ("9080H", "53E"), score: 99),
      won: true,
      auton: true,
      awp: false,
),
(
      match: "SF #2-1",
      red_alliance: (teams: ("7135S", "9080R"), score: 75),
      blue_alliance: (teams: ("9080H", "53E"), score: 142),
      won: true,
      auton: true,
      awp: false,
),
(
      match: "F #1-1",
      red_alliance: (teams: ("9080C", "53A"), score: 147),
      blue_alliance: (teams: ("9080H", "53E"), score: 93),
      won: false,
      auton: false,
      awp: false,
),
)
)

= Reflection
#grid(
  columns: (1fr, 1fr), 
nb_pie_chart(
  (5, green, "wins"),
  (1, orange, "ties"),
  (4, red, "losses"),
),

[
  Ultimately, the qualification matches were a bit of a struggle for our bot this competition but we were able to make a comeback during the elimination rounds, taking us to the finals. 
]
), 

Our overall robot performance was as follows: 

#nb_pro_con(
  pros: [
    - Flywheel was able to accurately and consistently fire triballs across the field.
    - Intake and wedges were both used efficiently and stayed strong. 
  ],
  cons:[
    - We did not have a working hang mechanism. 
    - We had no skills auton and didn't have a consistent auton that could allow us to earn the AWP. 
  ]
)

Overall, our main goal in the coming meetings should be to build a strong, consistent, and reliable hanging mechanism for our robot. We should also have a solid autonomous route coded and ready for both skills and matches. The auton should also be ready for both offensive and defensive sides, with the main goal to win the AWP. 
