# [Haskell/Arrow tutorial](https://en.wikibooks.org/wiki/Haskell/Arrow_tutorial)

```PowerShell
Set-Location ~/src/musim/yampa/arrow
docker run -it --rm -v ${PWD}:/w -w /w gdmcbain/yampa:0.1.0
```

```haskell
:load tutorial.hs
runCircuit total [1,0,1,0,0,2]  --[1,1,2,2,2,4]
runCircuit mean2 [0,10,7,8] --[0.0,5.0,5.666666666666667,6.25]
```

## Hangman

```haskell
:set -package random
:load hangman.hs
rng <- getStdGen
runCircuit (pickWord rng) [(), (), ()]  --["bird","cat","bird"]
runCircuit oneShot [(), (), (), (), ()]  --[True,False,False,False,False]
runCircuit (delayedEcho False) [True, False, False, False, True]
runCircuit (getWord rng) [(), (), ()] --["bird","bird","bird"]
```
