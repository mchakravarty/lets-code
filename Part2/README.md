# Specifying a simple a game scene and handling input events

2.5 hour session

## Specifying a game scene

We started by moving sprite definitions from the playground to the main Haskell module. Then, we discussed the concept of scenes in game design in general and how there can be multiple layers in a 2D game. After that, we talked about the definition of specification of scenes as trees of game objects (in the way used by SpriteKit).

Defining a scene:

* Toplevel binding defining an empty scene.
* Set a background colour.
* Add child nodes (using the previously defined sprites) and position them correctly.

## Event handlers and update functions

We talked about how computers process input and the idea of event handlers. As event handler are functions, we also revisited functions and how they are defined in Haskell. In particular also, how to define functions with more than one argument.

Then, we talked about the world state of a game and specifically how the event handlers in SpriteKit (for Haskell) can only affect the world state component of a scene. Finally, we discussed the scene update function.

### Maybe

The definition of the event handler and update function requires the use of `Maybe`. We looked at examples of values of type `Maybe`.

For now, our world state will be of type `Maybe Point`, where `Just position` indicates that the update function should issue an action that moves the character to the given position.

### Move to mouse click

We implement this as follows:

* We looked at the documentation for `Event` and some of the components of mouse events.
* We defined an event handler that changes the world state to `Just position` whenever we receive a left mouse down event at `position`.
* We defined an update function that moves the character whenever the world state contains a position.

## Notes for improvement

The `Maybe` type warrants a more detailed discussion. In particular, it is probably a good idea to already show its definition and also discuss its type in more detail. Then, we should write a few function consuming or producing the type, such as maybe `isNothing`, just to gain some practical experience with that type.

It might have been better to talk about `Maybe` before introducing game scenes, to avoid the interlude. We could already mentioned that we are going to use it in the game state to indicate the fact that the character should move to a particular position. Maybe even better, do the scene discussion, define a scene, then talk about the world state and introduce `Maybe`. Experiment with adding an update function and the different behaviour with different initial states. Only then, add the event handler.

We should have event handler constructors for the more common events, such as mouse clicks. The pattern matching needed at the moment is a bit too much at this stage.



