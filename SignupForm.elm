module SignupForm where

import Html exposing (..)

import Html.Events exposing (..)

import Html.Attributes exposing (id, type', for, value, class)


view model =
    form
        [ id "signup-form" ]
        [ h1 [] [ text "Hello World Signup Form" ]
        , label [ for "username-field" ] [ text "username: " ]
        , input [ id "username-field", type' "text", value model.username ] []
        , div [ class "validation-error" ] [ text model.errors.username ]
        , label [ for "password-field" ] [ text "password: " ]
        , input [ id "password-field", type' "password", value model.password ] []
        , div [ class "validation-error" ] [ text model.errors.password ]
        , div [ class "signup-button" ] [ text "Sign up" ]
        ]


initialErrors = { username = "", password = "" }
main = view { username = "", password = "", errors = initialErrors }
