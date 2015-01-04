import Graphics.SpriteKit

sprite = spriteWithImageNamed "Chicken.png"
apple  = spriteWithImageNamed "Apple.png"

brownColor = colorWithRGBA 0.8 0.8 0.2 1

move = (moveBy (Vector (-100) 0)){actionDuration = 4}

chickenSprite = sprite{ nodeName               = Just "Chicken"
                      , nodePosition           = Point 200 100
                      , nodeXScale             = 0.5
                      , nodeYScale             = 0.5
                      , spriteColor            = brownColor
                      , spriteColorBlendFactor = 0.5
                      }
appleSprite   = apple { nodePosition = Point 100 100
                      , nodeXScale = 0.5
                      , nodeYScale = 0.5 }


myScene = (sceneWithSize (Size 800 640))
          { sceneBackgroundColor = colorWithRGBA 0 0.9 0.1 1
          , sceneChildren        = [appleSprite, chickenSprite]
          , sceneHandleEvent     = Just eventHandler
          , sceneUpdate          = Just moveChicken
          , sceneData            = ""
          }

eventHandler (KeyEvent { keyEventType       = KeyDown
                       , keyEventCharacters = keys}) 
             world
  = Just keys
eventHandler (KeyEvent { keyEventType       = KeyUp
                       , keyEventCharacters = keys}) 
             world
  = Just ""
eventHandler event world = Nothing

moveChicken scene time 
  = case sceneData scene of 
      "w" -> let move = moveBy (Vector 0 2)
             in
             scene { sceneActionDirectives
                       = [runAction (runActionOnChildWithName
                                       move
                                       "Chicken")] }
      "s" -> let move = moveBy (Vector 0 (-2))
             in
             scene { sceneActionDirectives
                       = [runAction (runActionOnChildWithName
                                       move
                                       "Chicken")] }
      "a" -> let move = moveBy (Vector (-2) 0)
             in
             scene { sceneActionDirectives
                       = [runAction (runActionOnChildWithName
                                       move
                                       "Chicken")] }
      "d" -> let move = moveBy (Vector 2 0)
             in
             scene { sceneActionDirectives
                       = [runAction (runActionOnChildWithName
                                       move
                                       "Chicken")] }
      keys -> scene
