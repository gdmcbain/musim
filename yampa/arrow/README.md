# [Haskell/Arrow tutorial](https://en.wikibooks.org/wiki/Haskell/Arrow_tutorial#cite_note-1)

```PowerShell
docker run -it --rm -v ${PWD}:/w -w /w gdmcbain/yampa:0.1.0
```

```haskell
:load tutorial.hs
runCircuit total [1,0,1,0,0,2]  --[1,1,2,2,2,4]
```
