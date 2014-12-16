# Draw a character with some objects and add simple animation

2.5 hour session

## Getting started with Haskell

In the playground, we looked at a few somple Haskell expressions:

```haskell
-- Simple arithmetic
1
1 + 2
3 * (4 + 5)

-- Lists
[1, 2, 3]
[1..10]
head [1..10]
tail [1..10]
sum [1..10]

-- Variables
let oneToTen = [1..10]
oneToTen
sum oneToTen

-- Functions
let increment x = x + 1
increment 10

let average x y = (x + y) / 2
average 10 20

-- Types
1 :: Integer
1 :: Double
1.5 :: Double
1.5 :: Float

-- Strings
"Hello World!"
"This is a string" :: String

let hello = "Hello"
hello ++ "World" ++ "!"
length hello
```

For each section, I demonstrated the code; then, everybody went away and tried the same (and whatever else popped into their head).

## Getting started with SpriteKit

We started with a short demo of some more complex SpriteKit code to get a sense of where we will be going. Then, everybody drew a character of their own. We started with a new empty playground in a new project and by drawing just one sprite with

```
spriteWithImageNamed "Chicken.bmp"
```

Then, we progressed as follows:

* changing sprite properties,
* adding another sprite and composing the two into one node tree (picture),
* and finally adding some simple animation, ending up with the code in this directory.

At each step, everybody tried to do the same and some personal variations.
