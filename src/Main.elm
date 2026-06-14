module Main exposing (main)

import Browser
import Content exposing (Inline(..), ProjectBlock(..), ProjectItem(..), resume)
import Html exposing (Html, a, div, h1, h2, p, text)
import Html.Attributes exposing (href, rel, style, target)


type alias Model =
    ()


type Msg
    = NoOp


main : Program () Model Msg
main =
    Browser.document
        { init = \_ -> ( (), Cmd.none )
        , update = \_ model -> ( model, Cmd.none )
        , subscriptions = \_ -> Sub.none
        , view = \_ -> { title = resume.title, body = [ viewPage ] }
        }


viewPage : Html Msg
viewPage =
    div
        [ style "min-height" "100vh"
        , style "background" "#ffffff"
        , style "color" "#111111"
        , style "font-family" "Georgia, 'Times New Roman', serif"
        , style "line-height" "1.55"
        , style "padding" "40px 20px 64px"
        ]
        [ div
            [ style "max-width" "920px"
            , style "margin" "0 auto"
            ]
            [ headerBlock
            , sectionBlock "О себе" [ twoColumn resume.about ]
            , sectionBlock "Проекты" (List.map viewProject resume.projects)
            , sectionBlock "Хронология" (List.map viewTimeline resume.timeline)
            ]
        ]


headerBlock : Html Msg
headerBlock =
    div
        [ style "padding-bottom" "28px"
        , style "margin-bottom" "32px"
        , style "border-bottom" "1px solid #111111"
        ]
        [ h1
            [ style "margin" "0 0 10px"
            , style "font-size" "clamp(2.4rem, 6vw, 4.4rem)"
            , style "font-weight" "600"
            , style "letter-spacing" "-0.04em"
            ]
            [ text resume.title ]
        , div [ style "margin-top" "18px", style "display" "flex", style "gap" "14px", style "flex-wrap" "wrap" ]
            (List.map (\contact -> contactLink contact.label contact.url) resume.contacts)
        ]


sectionBlock : String -> List (Html Msg) -> Html Msg
sectionBlock title content =
    div [ style "margin-top" "28px" ]
        [ h2
            [ style "margin" "0 0 14px"
            , style "font-size" "0.95rem"
            , style "font-weight" "700"
            , style "text-transform" "uppercase"
            , style "letter-spacing" "0.12em"
            ]
            [ text title ]
        , div [] content
        ]


twoColumn : List Content.AboutEntry -> Html Msg
twoColumn items =
    div
        [ style "display" "grid"
        , style "grid-template-columns" "repeat(auto-fit, minmax(240px, 1fr))"
        , style "gap" "14px 28px"
        ]
        (List.map pairRow items)


pairRow : Content.AboutEntry -> Html Msg
pairRow entry =
    div []
        [ div [ style "font-size" "0.82rem", style "text-transform" "uppercase", style "letter-spacing" "0.08em", style "margin-bottom" "4px" ]
            [ text entry.label ]
        , div [ style "font-size" "1rem", style "color" "#222222" ]
            [ text entry.value ]
        ]


viewProject : Content.Project -> Html Msg
viewProject project =
    div [ style "margin-bottom" "22px" ]
        [ h2 [ style "margin" "0 0 8px", style "font-size" "1.25rem", style "font-weight" "600" ] [ text project.title ]
        , div [ style "max-width" "72ch" ] (List.map viewProjectBlock project.items)
        ]


viewProjectBlock : Content.ProjectBlock -> Html Msg
viewProjectBlock block =
    case block of
        ProjectParagraph paragraph ->
            p [ style "margin" "0 0 10px", style "color" "#222222" ] (List.map viewInline paragraph)

        ProjectItems items ->
            div [ style "margin" "0 0 10px" ] (List.map viewProjectItem items)


viewInline : Content.Inline -> Html Msg
viewInline inline =
    case inline of
        Plain body ->
            text body

        Link label url_ ->
            a
                [ href url_
                , target "_blank"
                , rel "noreferrer"
                , style "color" "#3446eb"
                , style "text-decoration" "underline"
                ]
                [ text label ]


viewProjectItem : Content.ProjectItem -> Html Msg
viewProjectItem item =
    case item of
        ProjectLink label url_ ->
            div [ style "margin-bottom" "6px" ]
                [ a
                    [ href url_
                    , target "_blank"
                    , rel "noreferrer"
                    , style "color" "#3446eb"
                    , style "text-decoration" "underline"
                    ]
                    [ text label ]
                ]

        ProjectText body ->
            p [ style "margin" "0 0 6px", style "color" "#222222" ] [ text body ]


viewTimeline : Content.TimelineEntry -> Html Msg
viewTimeline entry =
    div [ style "display" "grid", style "grid-template-columns" "140px 1fr", style "gap" "12px 24px", style "margin-bottom" "12px" ]
        [ div [ style "font-size" "0.9rem", style "font-weight" "700" ] [ text entry.period ]
        , div [ style "max-width" "72ch", style "color" "#222222" ] [ text entry.body ]
        ]


contactLink : String -> String -> Html Msg
contactLink label url_ =
    a
        [ href url_
        , target "_blank"
        , rel "noreferrer"
        , style "color" "#111111"
        , style "text-decoration" "none"
        , style "border-bottom" "1px solid #111111"
        , style "padding-bottom" "2px"
        ]
        [ text label ]
