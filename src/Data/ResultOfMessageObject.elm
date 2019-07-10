{-
   DaDaPush Public API
   DaDaPush: Real-time Notifications App Send real-time notifications through our API without coding and maintaining your own app for iOS or Android devices.

   The version of the OpenAPI document: v1
   Contact: contacts@dadapush.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.ResultOfMessageObject exposing (ResultOfMessageObject, decoder, encode)

import Data.MessageObject as MessageObject exposing (MessageObject)
import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias ResultOfMessageObject =
    { code : Int
    , data : Maybe (MessageObject)
    , errmsg : String
    }


decoder : Decoder ResultOfMessageObject
decoder =
    Decode.succeed ResultOfMessageObject
        |> required "code" Decode.int
        |> optional "data" (Decode.nullable MessageObject.decoder) Nothing
        |> required "errmsg" Decode.string



encode : ResultOfMessageObject -> Encode.Value
encode model =
    Encode.object
        [ ( "code", Encode.int model.code )
        , ( "data", Maybe.withDefault Encode.null (Maybe.map MessageObject.encode model.data) )
        , ( "errmsg", Encode.string model.errmsg )

        ]


