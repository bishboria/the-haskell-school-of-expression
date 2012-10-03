module Main where

{-main = do-}
    {-writeFile "testFile.txt" "Hello File System"-}
    {-putStr "Hello World\n"-}


{-main = do-}
    {-s <- readFile "testFile.txt"-}
    {-putStr s-}


{-actionList =-}
    {-[ putStr "Hello World\n"-}
    {-, writeFile "testFile.txt" "Hello File System"-}
    {-, putStr "File successfully written."-}
    {-]-}

{-main = sequence_ actionList-}


{-putCharList :: String -> [IO ()]-}
{-putCharList []     = []-}
{-putCharList (c:cs) = putChar c : putCharList cs-}

{-putString :: String -> IO ()-}
{-putString s = sequence_ (putCharList s)-}

{-main = putString "Hello World\n"-}


import Graphics.Rendering.OpenGL
import Graphics.UI.GLUT
import System.Exit (exitWith, ExitCode(ExitSuccess))

display :: IO ()
display = do
    clear [ ColorBuffer ]
    loadIdentity
    scale 0.001 0.001 (0.001 :: GLfloat)
    renderString Roman "Hello World"
    swapBuffers

reshape :: Size -> IO ()
reshape s@(Size w h) = do
    viewport $= (Position 0 0, s)
    postRedisplay Nothing

keyboardMouse window key state modifiers position = do
  keyboardAct window key state

keyboardAct w (Char ' ') Down = exitWith ExitSuccess
keyboardAct _ _ _ = return ()


main :: IO ()
main = do
    (progName, _) <- getArgsAndInitialize
    initialDisplayMode $= [ DoubleBuffered ]
    window <- createWindow "Hello, World!"
    reshapeCallback $= Just reshape
    keyboardMouseCallback $= Just (keyboardMouse window)
    displayCallback $= display
    mainLoop
