local fisica = require("physics")

fisica.start()
--fisica.setDrawMode("hybrid")

local largura = display.contentCenterX
local altura = display.contentCenterY

local cenario1 = display.newImageRect("tronco.png", 400,550)
cenario1.x = largura
cenario1.y = altura
--[[
local formigueiro = display.newImage("formigueiro.png",120,220)
formigueiro.x = 280
formigueiro.y = 490
formigueiro.rotation = -90
]]--
display.setStatusBar(display.HiddenStatusBar)

---- parades para o player não ultrapassar os limites do cenario.
wallTop = display.newRect(0,0,display.contentWidth*2,3)
wallTop:setFillColor(0,0,255)
wallBottom = display.newRect(display.contentHeight,display.contentHeight,3,display.contentWidth)
wallBottom:setFillColor(0,0,255)
wallLeft = display.newRect(0,0,3,display.contentHeight)
wallLeft:setFillColor(0,0,255)
wallRight = display.newRect(display.contentWidth,0,3,display.contentHeight)
wallRight:setFillColor(0,0,255)





fisica.addBody(wallTop,"static")
fisica.addBody(wallBottom,"static")
fisica.addBody(wallLeft,"static")
fisica.addBody(wallRight,"static")

local sheetData = {width = 120, height= 120,numFrames=12}


--local player = display.newRect(0,0,40,40)
local sheet = graphics.newImageSheet("WorkerAnt2.png",sheetData)

local sequenceSprite = 
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
	 {name = "MoveUp", start = 2, frames = {2,3}, time =  300, loopCount = 0},     
	 --{name = "MoveUp2", start = 3, count = 2, time =  300, loopCount = 1},
	 {name = "MoveDown", start = 11, frames = {11,12}, time =  300, loopCount = 0},
	 --{name = "MoveDown2", start = 12, count = 2, time =  300, loopCount = 1},
	 {name = "MoveLeft", start = 5, frames = {5,6}, time =  300, loopCount = 0},
	 --{name = "MoveLeft2", start = 6, count = 2, time =  300, loopCount = 1},
	 {name = "MoveRight", start = 8, frames = {8,9}, time =  300, loopCount = 0},
	 --{name = "MoveRight", start = 9, count = 2, time =  300, loopCount = 1},
	 
}

local player = display.newSprite(sheet,sequenceSprite)

player.x = 290
player.y = 480

player:setSequence("IdleUp")


local buttons = {}


buttons[2] = display.newImage("seta.png") -- up
buttons[2].x = 130
buttons[2].y = 440
buttons[2].rotation = -90
buttons[2].myName = "up"


buttons[3] = display.newImage("seta.png") -- down
buttons[3].x = 130
buttons[3].y = 520
buttons[3].rotation = 90
buttons[3].myName = "down"


buttons[4] = display.newImage("seta.png") -- left
buttons[4].x = 70
buttons[4].y = 480
buttons[4].rotation = -180
buttons[4].myName = "left"


buttons[1] = display.newImage("seta.png") -- right
buttons[1].x = 190
buttons[1].y = 480
buttons[1].myName = "right"



local walkX = 0
local walkY = 0

local touchButton = function(e)
	if (e.phase =="began" or e.phase =="moved") then
		if e.target.myName == "up" then
            player:setSequence("MoveUp")			
			
			walkY = -3
			walkX = 0
		elseif e.target.myName == "down" then
		    player:setSequence("MoveDown")
			walkY = 3
			walkX = 0
		elseif e.target.myName == "right" then
		    player:setSequence("MoveRight")
			walkX = 3
			walkY = 0
		elseif e.target.myName == "left" then
		    player:setSequence("MoveLeft")
			walkX = -3
			walkY = 0
		end
	
	else 
		if e.target.myName == "up" then
            player:setSequence("IdleUp")			
			
		elseif e.target.myName == "down" then
		    player:setSequence("IdleDown")
			
		elseif e.target.myName == "right" then
		    player:setSequence("IdleRight")
			
		elseif e.target.myName == "left" then
		    player:setSequence("IdleLeft")
			
		end
      
		walkX = 0
		walkY = 0
	end	

end

--- adiciona nos botoes o evento touch para movimentar o player
local i = 1
for i=1, #buttons do
	buttons[i]:addEventListener("touch", touchButton)
		
end
	



local function update()

	player.x = player.x + walkX
	player.y = player.y + walkY
    

    player:play() ---executa animação com os frames 
end


Runtime:addEventListener("enterFrame", update)