
local composer = require( "composer" )
local widget = require("widget")

-- Creates a variable that holds a Composer scene object
local scene = composer.newScene()

-- Menu music
local musicMenu = audio.loadSound( "ativos/audio/Root.mp3")






--create

function scene:create(event)
	
	
  local sceneGroup = self.view
  local phase = event.phase
  audio.play(musicMenu)
  local myGroup = display.newGroup()
  local bg = display.newImageRect(myGroup,"ativos/img/785.jpg",2000,3000)  
  -- bg.x = display.contentWidth
  --bg.y = display.contentHeight
   


  local logo = display.newImage(myGroup,"ativos/img/logoGame.png",300,300)
  logo.x = display.contentCenterX
  logo.y = 200
     

  
-- Select option sound effect
--local selected = audio.loadSound( "ativos/audio/Ibn_Al_Noor.mp3" )

  local function gotoJourneOne()

   -- print("tapped mouthTutorial level button")
    audio.stop()
    
    display.remove(myGroup)
    myGroup = nil
    composer.removeScene("menu", {time = 500})

    composer.gotoScene( "game", { time=800, effect="crossFade" } )

  end


  local function gotoCredits()

    --print("tapped credits")
    audio.stop()
    display.remove(myGroup)
    myGroup = nil
    composer.removeScene("menu", {time = 500})
    composer.gotoScene( "credits", { time=800, effect="crossFade" } )
  end


  local function exitGame()
    print("tapped exit button")
    --audio.play( selected )
    timer.performWithDelay( 1000,
      function()
        if( system.getInfo("platformName")=="Android" ) then
          native.requestExit()
        else
          os.exit()
        end
      end )
  end






	local loadGame = widget.newButton(
    {
        width = 300,
        height = 100,
        defaultFile = "ativos/img/Start.png",
        overFile = "ativos/img/StartRed.png",
        --label = "btnLoadGame",
        onEvent = gotoJourneOne
    }
	)

  myGroup:insert(loadGame)
	loadGame.x = display.contentCenterX
	loadGame.y = display.contentCenterY
    

	local creditsScene = widget.newButton(
    {
        width = 200,
        height = 100,
        defaultFile = "ativos/img/Credits.png",
        overFile = "ativos/img/CreditsRed.png",
        --label = "btnLoadGame",
        onEvent = gotoCredits
    }
	)
  myGroup:insert(creditsScene)
	creditsScene.x = display.contentCenterX
	creditsScene.y = display.contentCenterY + 150
    
  local exit = widget.newButton(
    {
        width = 300,
        height = 100,
        defaultFile = "ativos/img/ExitGame.png",
        overFile = "ativos/img/ExitGameRed.png",
        --label = "btnLoadGame",
        onEvent = exitGame
    }
	)
  myGroup:insert(exit)
	exit.x = display.contentCenterX
	exit.y = display.contentCenterY + 300
    


--  	loadGame:addEventListener( "touch", gotoJourneOne )

--[[
  	local buttonStart = widget.newButton(
    {
        fillColor = { default={ 1, 0.2, 0.5, 0.7 }, over={ 1, 0.2, 0.5, 1 } }
        label = "Start",
        onEvent = gotoJourneOne
    }
)

  ]]--
	
end

-- show

function scene:show(event)

	local sceneGroup = self.view
	local phase = event.phase
	
	if (phase=="will")then
	
	elseif (phase =="did" ) then
	
		
	end
end
	
-- hide

function scene:hide (event)
	
	local sceneGroup = self.view
	local phase = event.phase
	
	if (phase == "will") then
      
	elseif (phase == "did") then

		
	
	end
end	


--destroy
function scene:destroy (event)
	
	local sceneGroup = self.view
	local phase = event.phase
     	
	if (phase == "will") then
    composer.removeScene( "menu" )
	elseif (phase == "did") then
	
	end
end	


scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy",scene)

return scene

