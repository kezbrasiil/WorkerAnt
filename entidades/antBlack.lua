local antBlack = {}
local enemeAnt

local sheetData = {width = 130, height= 130,numFrames=12}



local sheetantBlack = graphics.newImageSheet("ativos/img/antBlack.png",sheetData)

local sequenceAntBlack = 
{
	{name = "IdleUp", start = 1, count = 1, time =  0, loopCount = 1},
	-- name : nome do moviento -> parado para cima
	-- start: frame do sprite onde a animacao começa 
	-- count: numero de frames para a animação
	-- time: tempo de duração da animação
	-- numero e vezes que a animação é executada.
    {name = "IdleDown", start = 10, count = 1, time =  0, loopCount = 1},     
	 
	{name = "IdleLeft", start = 4, count = 1, time =  0, loopCount = 1},     
	 
	{name = "IdleRight", start = 7, count = 1, time =  0, loopCount = 1},     
	 
	{name = "MoveUp", start = 2, count = 2, time =80, loopCount = 0},     
	 
	{name = "MoveDown", start = 11, count = 2, time =80, loopCount = 0},
	 
	{name = "MoveLeft", start = 5 , count = 2, time =80, loopCount = 0},
	 
	{name = "MoveRight", start = 8, count = 2, time =80, loopCount = 0},
	 
	 
}


function antBlack: getAntBlack(nameSequence, screenX, screenY)


	enemeAnt = display.newSprite(sheetantBlack,sequenceAntBlack)
	enemeAnt.x = screenX
	enemeAnt.y = screenY
	enemeAnt.name = "antBlack"
	enemeAnt:setSequence(nameSequence)

	return enemeAnt

end

return antBlack