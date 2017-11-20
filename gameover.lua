--[[
	@author Wilker Vinicius
]]

local composer = require( "composer" )
local scene = composer.newScene()


local musicGameOver = audio.loadSound( "ativos/audio/Get_There.mp3")

function scene:create()
	local sceneGroup = self.view

	audio.play(musicGameOver)


	composer.removeScene( "menu")
	local background = display.newImageRect("ativos/img/verde.png", 1500,3000)
	--background.x = display.contentCenterX 
	--background.y = display.contentCenterY
	sceneGroup:insert(background)

	finalScore = composer.getVariable( "finalScore" )
	finalTime  = composer.getVariable( "finalTime" )
	finalGame  = composer.getVariable( "finalGame")

	local gameoverImage = display.newImage("ativos/img/gameover.png", display.contentWidth  * 0.5, 230)
	gameoverImage.width = 400
	gameoverImage.height = 180
	sceneGroup:insert(gameoverImage)

	local statusJogo = display.newText( sceneGroup,finalGame, display.contentCenterX, 600, "xilosa.ttf", 44 )
    statusJogo:setFillColor( 0,0,0)
	
	local scoreJogo = display.newText( sceneGroup, "Score: "..finalScore, display.contentCenterX, 800, "xilosa.ttf", 44 )
    scoreJogo:setFillColor( 0,0,0)

   	local tempoFinal = display.newText( sceneGroup, "Seu Tempo: "..finalTime, display.contentCenterX, 1000, "xilosa.ttf", 44 )
    tempoFinal:setFillColor( 0,0,0)



	local function goToMenu()
		
		
		composer.removeScene( "menu" )
		transition.to({time = 15000, 
		onComplete = composer.gotoScene( "menu", { time=800, effect="crossFade" } ) })
		--composer.removeScene( "gameover" )

	end


	local back = display.newImage("ativos/img/back.png", display.contentWidth  * 0.87, display.contentHeight )
    back.width = 180
    back.height = 120
    sceneGroup:insert(back)

    function back:tap()
       

        audio.stop(musicGameOver)
        composer.removeScene("menu")

        composer.gotoScene( "menu", {time=2000, effect="crossFade"} )
      --  composer.removeScene( "credits")
    end

    back:addEventListener("tap", back)
  --  goToMenu()

end    	
	
function scene:show( ) 

end
function scene:hide( )
   -- composer.removeScene( "gameover" )
end

function scene:destroy( ) 
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene