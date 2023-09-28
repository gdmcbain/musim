# Yampa

[Yampa](https://github.com/gdmcbain/Yampa) is a

> Domain-specific language embedded in Haskell for programming hybrid (mixed discrete-time and continuous-time) systems.

```PowerShell
docker build -t gdmcbain/yampa:0.1.0 .
```

## Examples

### One-line test script

The one-line test of [compilation](https://github.com/gdmcbain/Yampa#compilation):

```PowerShell
docker run -i --rm -v ${PWD}:/w -w /w gdmcbain/yampa:0.1.0 runhaskell onelinetest.hs
```

Should write "Success" on the terminal

### The first real example

```PowerShell
docker run -i --rm -v ${PWD}:/w -w /w gdmcbain/yampa:0.1.0
```

```haskell
:load example.hs
reactimate firstSample nextSamples output signalFunction  -- and be ready to hit Ctrl+C
```
