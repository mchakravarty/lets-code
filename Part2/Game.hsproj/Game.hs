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
          , sceneData            = Nothing
          }

eventHandler (MouseEvent { mouseEventType      = LeftMouseDown
                         , eventLocationInNode = position}) 
             world
  = Just (Just position)
eventHandler event world = Nothing

moveChicken scene time 
  = case sceneData scene of 
      Nothing       -> scene
      Just position 
        -> let move = (moveTo position){actionDuration = 0.3}
           in
           scene { sceneActionDirectives
                     = [runAction (runActionOnChildWithName
                                     move
                                     "Chicken")] }