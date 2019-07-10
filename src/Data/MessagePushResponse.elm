{-
   DaDaPush Public API
   DaDaPush: Real-time Notifications App Send real-time notifications through our API without coding and maintaining your own app for iOS or Android devices.

   The version of the OpenAPI document: v1
   Contact: contacts@dadapush.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.MessagePushResponse exposing (MessagePushResponse, decoder, encode)

import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias MessagePushResponse =
    { messageId : Int
    }


decoder : Decoder MessagePushResponse
decoder =
    Decode.succeed MessagePushResponse
        |> required "messageId" Decode.int



encode : MessagePushResponse -> Encode.Value
encode model =
    Encode.object
        [ ( "messageId", Encode.int model.messageId )

        ]


