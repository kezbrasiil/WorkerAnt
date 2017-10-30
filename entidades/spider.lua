local spider = {}
local enemeSpider

local sheetData = {width = 350, height= 311, numFrames=12}



local sheetSpider = graphics.newImageSheet("ativos/img/spider2.png",sheetData)

local sequenceSpider = 
{
	{name = "IdleDown", start = 1, count = 1, time =  0, loopCount = 1},
	-- name : nome do moviento -> parado para cima
	-- start: frame do sprite onde a animacao começa 
	-- count: numero de frames para a animação
	-- time: tempo de duração da animação
	-- numero e vezes que a animação é executada.
    {name = "IdleUp", start = 10, count = 1, time =  0, loopCount = 1},     
	 
	{name = "IdleLeft", start = 4, count = 1, time =  0, loopCount = 1},     
	 
	{name = "IdleRight", start = 7, count = 1, time =  0, loopCount = 1},     
	 
	{name = "MoveUp", start = 2, count = 2, time =80, loopCount = 0},     
	 
	{name = "MoveDown", start = 11, count = 2, time =80, loopCount = 0},
	 
	{name = "MoveLeft", start = 5 , count = 2, time =80, loopCount = 0},
	 
	{name = "MoveRight", start = 8, count = 2, time =80, loopCount = 0},
	 
	 
}


function spider: getAntBlack(nameSequence, screenX, screenY)


	enemeSpider = display.newSprite(sheetSpider,sequenceSpider)
	enemeSpider.x = screenX
	enemeSpider.y = screenY
	enemeSpider.name = "spider"
	enemeSpider:setSequence(nameSequence)

	return enemeSpider

end

function spider:moveSpider(nameSequence,screenX, screenY)
	local i =1
	for i = 1, 2 do
		transition.to()	
	end	
end


return spider