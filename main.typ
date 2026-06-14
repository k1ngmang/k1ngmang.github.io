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

#title[
  Curriculum Vitae
]

#align(center)[
  #stack(
    dir: ltr,
    spacing: 1.5em,
    link("https://github.com/k1ngmang")[#image("icons/github.png", width: 1em)],
    link("https://t.me/k1ngmang")[#image("icons/telegram.png", width: 1em)],
    link("https://www.linkedin.com/in/k1ngmang")[#image("icons/linkedin.png", width: 1em)]
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
    Java, Go, Kotlin, \
    Processing, D, Gleam
  ],
  [
    #set par(justify: false)
    #strong[Stack:] \
    Gin, Gorm, PostgreSQL, Kafka,
    Redis, p5js, Ktor
  ]
)

#v(1em)

== Projects

=== compilers

#link("https://github.com/ixionlang/ixion", text(rgb("#3446eb"))[the Ixion programming language]).

Ixion: a statically-typed language with algebraic data types → JVM bytecode.
Implemented parser, type system, and code generation. No dependencies on existing compilers.
Syntax: Scala + Go.

The abandonment of OOP in favor of a powerful type system allowed for the creation
of a convenient and safe language while preserving the platform's capabilities.

Besides Ixion, I contributed to other projects (such as #link("https://github.com/nevalang/neva", text(rgb("#3446eb"))[Neva])),
and one of my languages (#link("https://github.com/k1ngmang/lazurite", text(rgb("#3446eb"))[Lazurite]))
was added to the Gitflic platform.

other projects on this topic:

#link("https://github.com/kngmng/tulang", text(rgb("#3446eb"))[tulang]) \
(compiler to JVM, 49 stars on GitHub)

#link("https://github.com/kngmng/lino", text(rgb("#3446eb"))[lino]) \
(compiler to Wiring, 33 stars on Github)

#link("https://github.com/k1ngmang/jasgo", text(rgb("#3446eb"))[jasgo]) \
(A type-safe library for writing a compiler backend for JVM, 18 stars on Github)

=== algorithms & engines

For some time, I was a maintainer in the
For some time, I was a maintainer in
#link("https://github.com/TheAlgorithms", text(rgb("#3446eb"))[TheAlgorithms])
community (algorithms in Kotlin), and also created a
#link("https://github.com/dlangalgorithms/algorithms", text(rgb("#3446eb"))[repository])
for implementing the most popular algorithms in Dlang.

Among the latest projects related to rendering engines:
#link("https://github.com/k1ngmang/zont", text(rgb("#3446eb"))[Zont]) \
- an engine written in Go, which is capable of rendering 3D models in the console
#link("https://github.com/k1ngmang/zont", text(rgb("#3446eb"))[Zont]) - an engine written in Go, which is capable of rendering 3D models in the console

== 2018 - 2020

I started programming on Scratch at the age of 10. I participated in various events and won prizes.

== 2020 - 2022

I switched to Java, but I was still interested in game development, so
I worked on game development using Java and Processing. I also worked briefly as a game developer.

== 2022 - 2025

I became interested in web application and compiler development. I wrote compilers for Wiring, JVM, and other platforms, as well as interpreters. I worked on various programming languages. My most popular projects were:
#link("https://github.com/ixionlang/ixion", text(rgb("#3446eb"))[Ixion]),
#link("https://github.com/k1ngmang/lazurite", text(rgb("#3446eb"))[Lazurite])

I began to shift from game development to engine development.
I completed projects developing mobile apps and other services.

In the summer of 2025, I started switching from Java to Go for backend development.

== 2025 - 2026

I remain interested in programming language development and am actively studying languages that interest me (for example, Gleam, D, Neva, Elixir).