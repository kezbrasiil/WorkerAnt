local composer = require( "composer" )
local fisica = require("physics")
local entidadeWorkerAnt = require("entidades.workerAnt")
 
local scene = composer.newScene()






fisica.start()
--fisica.setDrawMode("hybrid")
fisica.setGravity(0, 0)


display.setStatusBar(display.HiddenStatusBar)

local largura = display.contentWidth
local altura = display.contentHeight
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    local posicaoFundoY = 500
    local background = display.newImageRect( "background.jpg", 800,3500 )
    background.x = display.contentCenterX
    background.y = posicaoFundoY
    fisica.addBody(background,"static" ,{friction = 0.5})
     
    
    local arbusto = display.newImageRect( "arbusto.png", 200,200)
    arbusto.x =  300
    arbusto.y = 570


    local sheetData = {width = 120, height= 120,numFrames=12}

    local musicGame = audio.loadSound( "ativos/audio/Extinction_Level_Event.mp3" ) 
    audio.play(musicGame)
    

    local  function posicaoHorizontalPedra()

            local x = math.random(1,3)

            if x == 1 then
                return 384
            end

            if x == 2 then
                return 192
            end

            if x == 3 then
                return 576
            end

        end



        local function posicaoVerticalPedra()

            return  math.random(-2000,-10)


        end
--
        local pedra={}

        pedra[1]= display.newImageRect("ativos/img/pedra.png", 150,200)
        pedra[1].x = posicaoHorizontalPedra
        pedra[1].y = posicaoVerticalPedra
        pedra[1].name = "pedra"
        fisica.addBody(pedra[1], "static", {bounce=0})
                
        pedra[2]= display.newImageRect("ativos/img/pedra.png", 150,200)
        pedra[2].x = posicaoHorizontalPedra
        pedra[2].y = posicaoVerticalPedra
        pedra[2].name = "pedra"      
        fisica.addBody(pedra[2], "static", {bounce=0})  

        pedra[3]= display.newImageRect("ativos/img/pedra.png", 150,200)
        pedra[3].x = posicaoHorizontalPedra
        pedra[3].y = posicaoVerticalPedra
        pedra[3].name = "pedra"
        fisica.addBody(pedra[3], "static", {bounce=0})


        local caveira= display.newImageRect("ativos/img/caveira.png", 600,600)
        caveira.x = display.contentWidth - 150
        caveira.y = 1000
        caveira.rotation = -30        
        fisica.addBody(caveira, "static")


        local function analisandoVertical( y )
            -- body
            -- analisando se alguma pedra saiu da tela
            local j = 1
            for j=1, #pedra do 

                if y > pedra[j].y - 700 or y < pedra[j].y + 700  then
                    return y + posicaoVerticalPedra()
                else
                    return Y  
                end

            end
        end 
        



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
         
         {name = "MoveUp", start = 2, count = 2, time =80, loopCount = 0},     
         
         {name = "MoveDown", start = 11, count = 2, time =80, loopCount = 0},
         
         {name = "MoveLeft", start = 5 , count = 2, time =80, loopCount = 0},
         
         {name = "MoveRight", start = 8, count = 2, time =80, loopCount = 0},
         
         
    }

    local player = display.newSprite(sheet,sequenceSprite)
    fisica.addBody(player, "static",{friction = 0.5})

    player.x = 450
    player.y= 1150
   -- print (player:isLife)

    local buttons = {}


    buttons[2] = display.newImage("seta.png") -- up
    buttons[2].x = 130
    buttons[2].y = 1000
    buttons[2].rotation = -90
    buttons[2].myName = "up"


    buttons[3] = display.newImage("seta.png") -- down
    buttons[3].x = 130
    buttons[3].y = 1150
    buttons[3].rotation = 90
    buttons[3].myName = "down"


    buttons[4] = display.newImage("seta.png") -- left
    buttons[4].x = 40
    buttons[4].y = 1075 
    buttons[4].rotation = -180
    buttons[4].myName = "left"


    buttons[1] = display.newImage("seta.png") -- right
    buttons[1].x = 220
    buttons[1].y = 1075
    buttons[1].myName = "right"






   -- variavel v é a velocidade do cenário
   -- movimenta cenario para cima
    local v = 10
    contador = 0
    local moveCenarioParaCima = function()
            
                
        posicaoFundoY = posicaoFundoY + v
        background.y = posicaoFundoY
        caveira.y = caveira.y + v
            

            
        if background.y > 1500 then
            posicaoFundoY = 500
            contador = contador + 1
        end

            
            --player.x = player.x + moveLeft
            --player.y = player.y + moveRight
    end

    local moveCenarioParaBaixo = function()
            
                
        posicaoFundoY = posicaoFundoY - v
        background.y = posicaoFundoY
        caveira.y = posicaoFundoY 
        arbusto.y = posicaoFundoY
            
        if background.y > 1500 then
            posicaoFundoY = 500
        end

            
            --player.x = player.x + moveLeft
            --player.y = player.y + moveRight
    end



    local walkX = 0
    local walkY = 0

    local touchButton = function(e)

        print(e.phase)
        print (background.y)
        print ("cenario ciclo "..contador)
        print("player "..player.y)
        if (e.phase =="began" or e.phase =="moved") then

            if e.target.myName == "up" then
                player:setSequence("MoveUp")            
                moveCenarioParaCima()   
                walkY = -5
                walkX = 0
            elseif e.target.myName == "down" then
                player:setSequence("MoveDown")
                moveCenarioParaBaixo()
                walkY = 5
                walkX = 0
            elseif e.target.myName == "right" then
                player:setSequence("MoveRight")
                
                walkX = 5
                walkY = 0

            elseif e.target.myName == "left" then
                player:setSequence("MoveLeft")
                walkX = -5
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
            player:pause()
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

        player:play()
        
    end
    


    Runtime:addEventListener("enterFrame", update)

 
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene