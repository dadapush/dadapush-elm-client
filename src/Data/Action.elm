{-
   DaDaPush Public API
   DaDaPush: Real-time Notifications App Send real-time notifications through our API without coding and maintaining your own app for iOS or Android devices.

   The version of the OpenAPI document: v1
   Contact: contacts@dadapush.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.Action exposing (Action, Type(..), decoder, encode)

import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias Action =
    { name : String
    , type_ : Type
    , url : String
    }


type Type
    = Link



decoder : Decoder Action
decoder =
    Decode.succeed Action
        |> required "name" Decode.string
        |> required "type" typeDecoder
        |> required "url" Decode.string



encode : Action -> Encode.Value
encode model =
    Encode.object
        [ ( "name", Encode.string model.name )
        , ( "type", encodeType model.type_ )
        , ( "url", Encode.string model.url )

        ]



typeDecoder : Decoder Type
typeDecoder =
    Decode.string
        |> Decode.andThen
            (\str ->
                case str of
                    "link" ->
                        Decode.succeed Link

                    other ->
                        Decode.fail <| "Unknown type: " ++ other
            )



encodeType : Type -> Encode.Value
encodeType model =
    case model of
        Link ->
            Encode.string "link"



