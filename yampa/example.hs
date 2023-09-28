{-# LANGUAGE Arrows #-}
-- |
-- Based on yampa/README.md from
-- https://github.com/ivanperez-keera/Yampa/blob/develop/
import FRP.Yampa

signalFunction :: SF Double Double
signalFunction = proc x -> do
  y <- integral -< x
  t <- time -< ()
  returnA -< y / t

firstSample :: IO Double
firstSample = return 1.0

nextSamples :: Bool -> IO (Double, Maybe Double)
nextSamples _ = return (0.1, Just 1.0)

output :: Bool -> Double -> IO Bool
output _ x = do
  print x
  return False
