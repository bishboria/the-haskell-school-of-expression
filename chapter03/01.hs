module Main where

putString :: String -> IO ()
putString []     = return ()
putString (c:cs) =
    do putChar c
       putString cs

main = putString "Hello World\n"
