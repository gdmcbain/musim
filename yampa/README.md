# Yampa

[Yampa](https://github.com/gdmcbain/Yampa) is a

> Domain-specific language embedded in Haskell for programming hybrid (mixed discrete-time and continuous-time) systems.

```PowerShell
docker build -t gdmcbain/yampa:0.1.0 .
```

## Examples

### One-line test script

#### Run with `runhaskell`

The [one-line test](./onelinetest.hs):

```PowerShell
docker run -i --rm -v ${PWD}:/w -w /w gdmcbain/yampa:0.1.0 runhaskell onelinetest.hs
```

Should write "Success" on the terminal

#### Compile with `ghc` then run

```PowerShell
docker run --rm -v ${PWD}:/w -w /w gdmcbain/yampa:0.1.0 ghc onelinetest.hs
docker run --rm -v ${PWD}:/w -w /w gdmcbain/yampa:0.1.0 ./onelinetest
```

### The first real example

```PowerShell
docker run -i --rm -v ${PWD}:/w -w /w gdmcbain/yampa:0.1.0
```

```haskell
:load example.hs
reactimate firstSample nextSamples output signalFunction  -- and be ready to hit Ctrl+C
```

### Another example

[reactimate.hs](./reactimate.hs):

```PowerShell
docker run --rm -v ${PWD}:/w -w /w gdmcbain/yampa:0.1.0 runhaskell reactimate.hs
```

This should write:

```text
Hello... wait for it...
World!
```
