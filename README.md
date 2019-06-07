# Natural Numbers Toy

> From zero to infinity and beyond.

Read [the code](./src/Main.hs):

```haskell
main :: IO ()
main = do
  print zero
  print one
  print two
  print three
  print four
  print five
```

Build and run the app:

```bash
stack build
stack exec nat-haskell
Zero
Succ Zero
Succ (Succ Zero)
Succ (Succ (Succ Zero))
Succ (Succ (Succ (Succ Zero)))
Succ (Succ (Succ (Succ (Succ Zero))))
```

Compare with the [typescript version](https://github.com/grancalavera/nat-typescript)
