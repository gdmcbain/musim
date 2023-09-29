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

### `embed`

See [Running primitive signal functions in Yampa](https://lambdor-net.readthedocs.io/embed.html).

```PowerShell
docker run -it --rm gdmcbain/yampa:0.1.0
```

Primitive signal functions include:

- [`identity`](https://hackage.haskell.org/package/Yampa-0.14.4/docs/FRP-Yampa-Basic.html#v:identity)
- [`constant`](https://hackage.haskell.org/package/Yampa-0.14.4/docs/FRP-Yampa-Basic.html#v:constant)
- [`time`](https://hackage.haskell.org/package/Yampa-0.14.4/docs/FRP-Yampa-Time.html#v:time)

```haskell
import FRP.Yampa
h = [1.0, 0.2, 0.03]
embed identity (123, zip h $ map Just [234, 345, 456])  --[123,234,345,456]
embed identity (537, zip h [Nothing, Nothing, Just 123])  --[537,537,537,123]
embed (constant 537) (Nothing, map (,Nothing) h)  --[537,537,537,537]
embed (constant 537) (123, zip h $ map Just [234, 345, 456])  --[537,537,537,537]
embed time (Nothing, map (,Nothing) h)  --[0.0,1.0,1.2,1.23]
embed time (123, zip h $ map Just [234, 345, 456])  -- ditto

```
