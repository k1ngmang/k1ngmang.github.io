module Content exposing (AboutEntry, ContactLink, Project, ProjectItem(..), Resume, TimelineEntry, resume)


type alias Resume =
    { title : String
    , subtitle : String
    , contacts : List ContactLink
    , about : List AboutEntry
    , projects : List Project
    , timeline : List TimelineEntry
    }


type alias ContactLink =
    { label : String
    , url : String
    }


type alias AboutEntry =
    { label : String
    , value : String
    }


type alias Project =
    { title : String
    , items : List ProjectItem
    }


type ProjectItem
    = ProjectLink String String
    | ProjectText String


type alias TimelineEntry =
    { period : String
    , body : String
    }


resume : Resume
resume =
    { title = "Curriculum Vitae"
    , subtitle = "Minimalist CV site."
    , contacts =
        [ { label = "GitHub", url = "https://github.com/k1ngmang" }
        , { label = "Telegram", url = "https://t.me/k1ngmang" }
        , { label = "LinkedIn", url = "https://www.linkedin.com/in/k1ngmang" }
        ]
    , about =
        [ { label = "Languages", value = "Java, Go, Kotlin, Processing, D, Gleam" }
        , { label = "Stack", value = "Gin, Gorm, PostgreSQL, Kafka, Redis, p5js, Ktor" }
        ]
    , projects =
        [ { title = "Compilers"
          , items =
                [ ProjectLink "the Ixion programming language" "https://github.com/ixionlang/ixion"
                , ProjectText "Ixion is a statically typed language with algebraic data types that targets JVM bytecode. I implemented the parser, type system, and code generation."
                , ProjectText "Other related work includes Neva and Lazurite, plus compiler tooling such as Tulang, Lino, and Jasgo."
                ]
          }
        , { title = "Algorithms and Engines"
          , items =
                [ ProjectText "I was a maintainer in TheAlgorithms community for Kotlin and built a repository for popular algorithms in D."
                , ProjectText "Recent rendering work includes Zont, a Go engine capable of rendering 3D models in the console."
                ]
          }
        ]
    , timeline =
        [ { period = "2018 - 2020", body = "Started programming on Scratch at age 10, participated in events, and won prizes." }
        , { period = "2020 - 2022", body = "Moved to Java, worked with game development and Processing, and briefly worked as a game developer." }
        , { period = "2022 - 2025", body = "Focused on web applications, compilers, interpreters, and languages. Moved gradually from game development to engine development." }
        , { period = "2025 - 2026", body = "Continued studying languages and systems that interest me, including Gleam, D, Neva, and Elixir." }
        ]
    }
