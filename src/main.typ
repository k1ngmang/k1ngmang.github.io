#set text(
  font: "New Computer Modern",
  size: 11.1pt
)
#set page(
  paper: "a5",
  margin: (x: 1.8cm, y: 1.5cm),
)
#set par(
  justify: true,
  leading: 0.52em,
)

#show title: set text(size: 22pt)

#let cv = json("content/cv.json")

#title[
  #cv.title
]

#align(center)[
  #stack(
    dir: ltr,
    spacing: 1.5em,
    link("https://github.com/k1ngmang")[#image("../icons/github.png", width: 1em)],
    link("https://t.me/k1ngmang")[#image("../icons/telegram.png", width: 1em)],
    link("https://www.linkedin.com/in/k1ngmang")[#image("../icons/linkedin.png", width: 1em)]
  )
]

== About

#v(0.5em)

#grid(
  columns: (1fr, 1fr),
  gutter: 0.5cm,
  [
    #set par(justify: false)
    #strong[Languages:] \
    #cv.about.at(0).value
  ],
  [
    #set par(justify: false)
    #strong[Stack:] \
    #cv.about.at(1).value
  ]
)

#v(1em)

== Projects

=== compilers

  #link("https://github.com/ixionlang/ixion", text(rgb("#3446eb"))[the Ixion programming language]).

  Ixion is a statically typed language with algebraic data types that targets JVM bytecode. I implemented the parser, type system, and code generation.

  Other related work includes Neva and Lazurite, plus compiler tooling such as Tulang, Lino, and Jasgo.

=== algorithms & engines

For some time, I was a maintainer in #link("https://github.com/TheAlgorithms", text(rgb("#3446eb"))[TheAlgorithms]) community (algorithms in Kotlin), and also created a #link("https://github.com/dlangalgorithms/algorithms", text(rgb("#3446eb"))[repository]) for implementing the most popular algorithms in Dlang.

Among the latest projects related to rendering engines: #link("https://github.com/k1ngmang/zont", text(rgb("#3446eb"))[Zont]) - an engine written in Go, which is capable of rendering 3D models in the console

== 2018 - 2020

Started programming on Scratch at age 10, participated in events, and won prizes.

== 2020 - 2022

Moved to Java, worked with game development and Processing, and briefly worked as a game developer.

== 2022 - 2025

Focused on web applications, compilers, interpreters, and languages. Moved gradually from game development to engine development.

== 2025 - 2026

Continued studying languages and systems that interest me, including Gleam, D, Neva, and Elixir.
