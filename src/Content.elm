module Content exposing (AboutEntry, ContactLink, Inline(..), Paragraph, Project, ProjectBlock(..), ProjectItem(..), Resume, TimelineEntry, resume)


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
    , items : List ProjectBlock
    }


type alias Paragraph =
    List Inline


type Inline
    = Plain String
    | Link String String


type ProjectBlock
    = ProjectParagraph Paragraph
    | ProjectItems (List ProjectItem)


type ProjectItem
    = ProjectLink String String
    | ProjectText String


type alias TimelineEntry =
    { period : String
    , body : String
    }


resume : Resume
resume =
    { title = "Резюме"
    , subtitle = ""
    , contacts =
        [ { label = "GitHub", url = "https://github.com/k1ngmang" }
        , { label = "Telegram", url = "https://t.me/k1ngmang" }
        , { label = "LinkedIn", url = "https://www.linkedin.com/in/k1ngmang" }
        ]
    , about =
        [ { label = "Языки", value = "Java, Go, Kotlin, Processing" }
        , { label = "Стек", value = "Spring, Gin, Hibernate, Gorm, PostgreSQL, Kafka, Redis, p5js" }
        ]
    , projects =
        [ { title = "компиляторы"
          , items =
                [ ProjectParagraph
                    [ Link "язык программирования Ixion" "https://github.com/ixionlang/ixion"
                    ]
                , ProjectParagraph
                    [ Plain "Ixion - это статически типизированный язык с алгебраическими типами данных → байткод JVM." ]
                , ProjectParagraph
                    [ Plain "Реализовал парсер, систему типов, оптимизации и генерацию кода." ]
                , ProjectParagraph
                    [ Plain "Синтаксис: Scala + Go." ]
                , ProjectParagraph
                    [ Plain "Отказ от ООП в пользу мощной системы типов позволил создать" ]
                , ProjectParagraph
                    [ Plain "удобный и безопасный язык, сохранив возможности платформы." ]
                , ProjectParagraph
                    [ Plain "Помимо Ixion, я участвовал и в других проектах (например, "
                    , Link "Neva" "https://github.com/nevalang/neva"
                    , Plain "), а один из моих языков ("
                    , Link "Lazurite" "https://github.com/k1ngmang/lazurite"
                    , Plain ") был добавлен на платформу Gitflic."
                    ]
                , ProjectParagraph
                    [ Plain "Другие проекты на эту тему:" ]
                , ProjectItems
                    [ ProjectLink "tulang" "https://github.com/kngmng/tulang"
                    , ProjectText "(компилятор в JVM, 50 звёзд на GitHub)"
                    , ProjectLink "lino" "https://github.com/kngmng/lino"
                    , ProjectText "(компилятор в Wiring, 33 звезды на GitHub)"
                    , ProjectLink "jasgo" "https://github.com/k1ngmang/jasgo"
                    , ProjectText "(типобезопасная библиотека для написания backend'а компилятора для JVM, 18 звёзд на GitHub)"
                    ]
                ]
          }
        , { title = "алгоритмы и движки"
          , items =
                [ProjectParagraph
                    [ Plain "Некоторое время я был мейнтейнером в "
                    , Link "TheAlgorithms" "https://github.com/TheAlgorithms"
                    , Plain " (алгоритмы на Kotlin), а также сделал "
                    , Link "репозиторий" "https://github.com/dlangalgorithms/algorithms"
                    , Plain " для реализации самых алгоритмов на Dlang."
                    ]
                , ProjectParagraph
                    [ Plain "Из последних проектов, связанных с движками: "
                    , Link "Zont" "https://github.com/k1ngmang/zont"
                    , Plain " - движок на Go, способный рендерить 3D-модели в консоли"
                    ]
                ]
          }
        ]
    , timeline =
        [ { period = "2018 - 2020", body = "Я начал программировать на Scratch в возрасте 10 лет. Участвовал в разных мероприятиях и выигрывал призы." }
        , { period = "2020 - 2022", body = "Перешёл на Java, но всё ещё интересовался разработкой игр, поэтому занимался их разработкой на Java и Processing. Также некоторое время работал разработчиком игр." }
        , { period = "2022 - 2025", body = "Меня заинтересовала разработка веб-приложений и компиляторов. Я писал интерпретаторы и компиляторы под Wiring, JVM и другие платформы. Работал над различными языками программирования. Мои самые популярные проекты: Ixion, Lazurite" }
        , { period = "2025 - 2026", body = "Я по-прежнему интересуюсь разработкой языков программирования и активно изучаю интересующие меня языки (например, Gleam, D, Neva, Elixir)." }
        ]
    }
