# Moving with key presses

2.5 hour session

## Planning the game

Planning of the game structure. What type of game is it? What is the goal of the player? What are the obstacles to reaching that goal?

## Key event handlers

We talked in detail about the purpose and interaction of the event handler and update function. Then, we rewrote the mouse event handling into a WASD key event handler for character movement.

## Notes for improvement

Arguably, the simple key event handlers are simpler than the mouse one as we don't need doubly nested `Maybe` types. Maybe we should start with key instead of mouse events.
