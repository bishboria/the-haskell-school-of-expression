module Main where

putString :: String -> IO ()
putString []     = return ()
putString (c:cs) = do
    putChar c
    putString cs

getString :: IO String
getString = do
    c <- getChar
    if (c == '\n')
    then
        return []
    else do
        cs <- getString
        return $ c : cs

main = do
    str <- getString
    putString str
