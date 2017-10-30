local lagartixa = {}

local enemeL

local sheetData = {width = 1080, height= 1440,numFrames=8}



local sheetLagartixa = graphics.newImageSheet("ativos/img/lagartixa.png",sheetData)

local sequenceLagartixa = 
{
	{name = "IdleRight", start = 1, count = 3, time = 2000, loopCount = 0},
	-- name : nome do moviento -> parado para cima
	-- start: frame do sprite onde a animacao começa 
	-- count: numero de frames para a animação
	-- time: tempo de duração da animação
	-- numero e vezes que a animação é executada.
     
	{name = "IdleLeft", start = 5, count = 3, time =  2000, loopCount = 0},     
	
	 
	 
}


function lagartixa: getLagartixa(nameSequence, screenX, screenY)
 	
 	enemeL = display.newSprite(sheetLagartixa,sequenceLagartixa)
	enemeL:setSequence(nameSequence)

	enemeL.x = screenX
	enemeL.y = screenY
	enemeL.name = "lagartixa"

	return enemeL

end


return lagartixa


