-- |
-- https://wiki.haskell.org/Yampa/reactimate#Example
import Control.Monad
import Data.IORef
import Data.Time.Clock
import FRP.Yampa

twoSecondsPassed :: SF () Bool
twoSecondsPassed = time >>> arr (> 2)

main :: IO ()
main = do
    t <- getCurrentTime
    timeRef <- newIORef t
    reactimate initialize (sense timeRef) actuate twoSecondsPassed

initialize :: IO ()
initialize = putStrLn "Hello... wait for it..."

actuate :: Bool -> Bool -> IO Bool
actuate _ x = when x (putStrLn "World!") >> return x

sense :: IORef UTCTime -> Bool -> IO (Double, Maybe ())
sense timeRef _ = do
    now      <- getCurrentTime
    lastTime <- readIORef timeRef
    writeIORef timeRef now
    let dt = now `diffUTCTime` lastTime
    return (realToFrac dt, Just ())
