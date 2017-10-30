
local composer = require("composer")

local scene = composer.newScene()



function scene:create( event )

	local bg = display.newRect(100,100,200,200)
	bg:setFillColor(0,255,0)
	
	local sceneGroup = self.view
    
   -- local  background = display.newImageRect(mainGroup,"ativos/img/chaoTerraco3.jpg", 400,550)
   -- background.x = largura
    --background.y = altura     



  


    if (phase=="will") then

    elseif (phase == "did") then
    
		
       
		
    end   

	timer.performWithDelay(tempo, contaTempo	, 120)
	Runtime:addEventListener("enterFrame", update)		
end

    

-- body

function scene:show( event )

	local sceneGroup = self.view
	

    
    if (phase == "will") then
	
	elseif (phase == "did") then
 
   		   
    

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
	
	elseif (phase == "did") then
	
	end
end	


scene:addEventListener("create", scene)
scene:addEventListener("show", scene)
scene:addEventListener("hide", scene)
scene:addEventListener("destroy",scene)



return scene
