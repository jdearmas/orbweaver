module Main where

import qualified MyLib (someFunc)

-- New imports
import Network.HTTP
import Network.HTTP.Proxy
import Network.Browser
import Control.Applicative ((<$>))
import Data.Maybe (fromJust)
import Network.Browser
import Network.HTTP
import Network.HTTP.Proxy (parseProxy)


{-
The source-input/output-sink language layer
-}
data Source = Source String
data Input  = Input String
data Output = Output String
data Sink   = Sink String

-- readSource ∷ Source → Input
readSource source = do
  readFile source

-- write ∷ Sink → Output → IO()
writeSink sink output = do
  writeFile sink output

{-
The HTTP response/request message language layer
-}
data HTTP_Request  = HTTP_Request Output
data HTTP_Response = HTTP_Response Input

-- read_http_message ∷ Input → HTTP_Message
readHTTPMessage input = 
  input

-- parse_http_message
-- parse_http_message http_message =
  

{-
The HTTP proxy layer
-}
  

{-
The IO-monad language layer
-}

main :: IO ()
main = do
  -- putStrLn "Hello, Haskell!"
  -- putStrLn input
  -- mapM_ putStrLn http_message

  {-
  create a http proxy
  1. run a HTTPS and HTTPS proxy on port 3128.
  -}
--   let proxy = Proxy "http://localhost:3128"


  input <- readSource "testing.txt"
  let http_message = readHTTPMessage input
  mapM_ putStrLn (lines http_message)


  -- proof library function works
  -- MyLib.someFunc

{-
main = do
    rsp <- browse $ do
      setProxy . fromJust $ parseProxy "127.0.0.1:8118"
      request $ getRequest "http://www.google.com"
    print $ rspBody <$> rsp
-}
