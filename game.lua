local composer = require( "composer" )
local fisica = require("physics")
local entidadeWorkerAnt = require("entidades.workerAnt")
 
local scene = composer.newScene()






fisica.start()
--fisica.setGravity(0, 0)


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
     
    -----cenario composto de arbutos que servirá de obstatuculo para nossa personagem
    ---- primeira linha horizontal
    local arbusto = {} 
    arbusto[1]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[1].x =  0
    arbusto[1].y = 900
    fisica.addBody(arbusto[1],"static")

    arbusto[2]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[2].x =  100
    arbusto[2].y = 900
    fisica.addBody(arbusto[2],"static")

    arbusto[3]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[3].x =  200
    arbusto[3].y = 900
    fisica.addBody(arbusto[3],"static")


    arbusto[4]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[4].x =  300
    arbusto[4].y = 900
    fisica.addBody(arbusto[4],"static")


    arbusto[5]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[5].x =  400
    arbusto[5].y = 900
    fisica.addBody(arbusto[5],"static")


    arbusto[6]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[6].x =  500
    arbusto[6].y = 900
    fisica.addBody(arbusto[6],"static")

    
    --- entrada inicial do personagem
    arbusto[7]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[7].x =  display.contentWidth
    arbusto[7].y = 940
    arbusto[7].rotation = 90
    fisica.addBody(arbusto[7],"static")

    arbusto[8]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[8].x =  display.contentWidth
    arbusto[8].y = 1000
    arbusto[8].rotation = 90
    fisica.addBody(arbusto[8],"static")

    arbusto[9]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[9].x =  display.contentWidth
    arbusto[9].y = 1100
    arbusto[9].rotation = 90
    fisica.addBody(arbusto[9],"static")


    arbusto[10]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[10].x =  display.contentWidth
    arbusto[10].y = 1200
    --arbusto[10].rotation =
    fisica.addBody(arbusto[10],"static")
    
  --- finaliza entrada caminho inicial--


    --- segunca linha horizontal
    arbusto[11]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[11].x =  display.contentWidth
    arbusto[11].y = 600
    fisica.addBody(arbusto[11],"static")

    arbusto[12]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[12].x =  display.contentWidth -100
    arbusto[12].y = 600
    fisica.addBody(arbusto[12],"static")

    arbusto[13]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[13].x =  display.contentWidth -200
    arbusto[13].y = 600
    fisica.addBody(arbusto[13],"static")


    arbusto[14]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[14].x =  display.contentWidth - 300
    arbusto[14].y = 600
    fisica.addBody(arbusto[14],"static")


    arbusto[15]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[15].x =  display.contentWidth - 400
    arbusto[15].y = 600
    fisica.addBody(arbusto[15],"static")


    arbusto[16]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[16].x =  display.contentWidth - 500
    arbusto[16].y = 600
    fisica.addBody(arbusto[16],"static")


    arbusto[17]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[17].x =  display.contentWidth - 500
    arbusto[17].y = 600
    fisica.addBody(arbusto[17],"static")


---fim segunda linha horizontal

-- terceira linha horizontal
    arbusto[18]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[18].x =  0
    arbusto[18].y = 300
    fisica.addBody(arbusto[18],"static")

    arbusto[19]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[19].x =  100
    arbusto[19].y = 300
    fisica.addBody(arbusto[19],"static")

    arbusto[20]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[20].x =  200
    arbusto[20].y = 300
    fisica.addBody(arbusto[20],"static")


    arbusto[21]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[21].x =  display.contentWidth - 200
    arbusto[21].y = 300
    fisica.addBody(arbusto[21],"static")


    arbusto[22]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[22].x =  display.contentWidth - 100
    arbusto[22].y = 300
    fisica.addBody(arbusto[22],"static")


    arbusto[23]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[23].x =  display.contentWidth
    arbusto[23].y = 300
    fisica.addBody(arbusto[23],"static")

----- fim terceira linha horizontal


--- inicio da primeira parede de arbustos a esquerda
    arbusto[24]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[24].x =  0
    arbusto[24].y = 950
    arbusto[24].rotation = 90
    fisica.addBody(arbusto[24],"static")

    arbusto[25]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[25].x =  0
    arbusto[25].y = 800
    arbusto[25].rotation = 90
    fisica.addBody(arbusto[25],"static")

    arbusto[26]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[26].x =  0
    arbusto[26].y = 700
    arbusto[26].rotation = 90
    fisica.addBody(arbusto[26],"static")


    arbusto[27]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[27].x =  0
    arbusto[27].y = 600
    --arbusto[10].rotation =
    fisica.addBody(arbusto[27],"static")


    arbusto[28]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[28].x =  0
    arbusto[28].y = 500
    --arbusto[10].rotation =
    fisica.addBody(arbusto[28],"static")


    arbusto[29]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[29].x =  0
    arbusto[29].y = 400
    --arbusto[10].rotation =
    fisica.addBody(arbusto[29],"static")


    arbusto[30]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[30].x =  0
    arbusto[30].y = 300
    --arbusto[10].rotation =
    fisica.addBody(arbusto[30],"static")


    arbusto[31]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[31].x =  0
    arbusto[31].y = 200
    --arbusto[10].rotation =
    fisica.addBody(arbusto[31],"static")


    arbusto[32]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[32].x =  0
    arbusto[32].y = 100
    --arbusto[10].rotation =
    fisica.addBody(arbusto[32],"static")


    arbusto[33]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[33].x =  0
    arbusto[33].y =  -100    --arbusto[10].rotation =
    fisica.addBody(arbusto[33],"static")



    arbusto[34]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[34].x =  0
    arbusto[34].y =  -200    --arbusto[10].rotation =
    fisica.addBody(arbusto[34],"static")



    arbusto[35]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[35].x =  0
    arbusto[35].y =  -300    --arbusto[10].rotation =
    fisica.addBody(arbusto[35],"static")



    arbusto[36]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[36].x =  0
    arbusto[36].y =  -400    --arbusto[10].rotation =
    fisica.addBody(arbusto[36],"static")

    arbusto[37]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[37].x =  0
    arbusto[37].y =  -500    --arbusto[10].rotation =
    fisica.addBody(arbusto[37],"static")
--- final da primeira parede de arbustos a esquerda



---inicio parde de arbustos a direita

    arbusto[38]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[38].x =  display.contentWidth
    arbusto[38].y = 500
    --arbusto[10].rotation =
    fisica.addBody(arbusto[38],"static")


    arbusto[39]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[39].x =  display.contentWidth
    arbusto[39].y = 400
    --arbusto[10].rotation =
    fisica.addBody(arbusto[39],"static")


    arbusto[40]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[40].x =  display.contentWidth
    arbusto[40].y = 300
    --arbusto[10].rotation =
    fisica.addBody(arbusto[40],"static")


    arbusto[41]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[41].x =  display.contentWidth
    arbusto[41].y = 200
    --arbusto[10].rotation =
    fisica.addBody(arbusto[41],"static")


    arbusto[42]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[42].x =  display.contentWidth
    arbusto[42].y = 100
    --arbusto[10].rotation =
    fisica.addBody(arbusto[42],"static")


    arbusto[43]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[43].x =  display.contentWidth
    arbusto[43].y =  -100    --arbusto[10].rotation =
    fisica.addBody(arbusto[43],"static")



    arbusto[44]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[44].x =  display.contentWidth
    arbusto[44].y =  -200    --arbusto[10].rotation =
    fisica.addBody(arbusto[44],"static")



    arbusto[45]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[45].x =  display.contentWidth
    arbusto[45].y =  -300    --arbusto[10].rotation =
    fisica.addBody(arbusto[45],"static")



    arbusto[46]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[46].x =  display.contentWidth
    arbusto[46].y =  -400    --arbusto[10].rotation =
    fisica.addBody(arbusto[36],"static")

    arbusto[47]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[47].x =  display.contentWidth
    arbusto[47].y =  -500    --arbusto[10].rotation =
    fisica.addBody(arbusto[47],"static")


---- inicio arbustos e pedras ao centro

    local pedra={}

    pedra[1]= display.newImageRect("ativos/img/pedra.png", 150,200)
    pedra[1].x = display.contentWidth-330
    pedra[1].y = -120
    pedra[1].name = "pedra"
    fisica.addBody(pedra[1], "static", {bounce=0})        

    arbusto[48]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[48].x =  display.contentWidth - 100
    arbusto[48].y =  -100    --arbusto[10].rotation =
    fisica.addBody(arbusto[48],"static")
    

    arbusto[49]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[49].x =  display.contentWidth - 200
    arbusto[49].y =  -100    --arbusto[10].rotation =
    fisica.addBody(arbusto[49],"static")            


    arbusto[50]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[50].x =  display.contentWidth-330
    arbusto[50].y = -290
    arbusto[50].rotation = 90
    fisica.addBody(arbusto[50],"static")


    arbusto[51]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[51].x =  display.contentWidth-330
    arbusto[51].y = -390
    arbusto[51].rotation = 90
    fisica.addBody(arbusto[51],"static")

    arbusto[52]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[52].x =  display.contentWidth-330
    arbusto[52].y = -490
    arbusto[52].rotation = 90
    fisica.addBody(arbusto[52],"static")

--- final arbustos e pedras ao centro

-- quarta linha horizontal
    arbusto[53]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[53].x =  0
    arbusto[53].y = -1000
    fisica.addBody(arbusto[53],"static")

    arbusto[54]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[54].x =  100
    arbusto[54].y = -1000
    fisica.addBody(arbusto[54],"static")

    arbusto[55]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[55].x =  200
    arbusto[55].y = -1000
    fisica.addBody(arbusto[55],"static")


    arbusto[56]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[56].x =  display.contentWidth - 200
    arbusto[56].y = -1000
    fisica.addBody(arbusto[56],"static")


    arbusto[57]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[57].x =  display.contentWidth - 100
    arbusto[57].y = -1000
    fisica.addBody(arbusto[57],"static")


    arbusto[58]= display.newImageRect( "ativos/img/arbustos.png", 200,200)
    arbusto[58].x =  display.contentWidth
    arbusto[58].y = -1000
    fisica.addBody(arbusto[58],"static")

--- final quarta linha horizontal


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

        -- pedra[2]= display.newImageRect("ativos/img/pedra.png", 150,200)
        -- pedra[2].x = display.contentWidth/2
        -- pedra[2].y = -430
        -- pedra[2].name = "pedra"      
        -- fisica.addBody(pedra[2], "static", {bounce=0})  

        -- pedra[3]= display.newImageRect("ativos/img/pedra.png", 150,200)
        -- pedra[3].x = display.contentWidth/2
        -- pedra[3].y = -650
        -- pedra[3].name = "pedra"
        -- fisica.addBody(pedra[3], "static", {bounce=0})


        local caveira = display.newImageRect("ativos/img/caveira.png", 600,600)
        caveira.x = display.contentWidth 
        caveira.y = 700
        --caveira.rotation = -30        
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
    fisica.addBody(player, "dynamic",{friction = 0.5})
    player.gravityScale = 0

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

    local function moveArbustosCima()
        
        local k
        for k=1,#arbusto do
               arbusto[k].y = arbusto[k].y + v
            end    
        
    end


    local function moveArbustosBaixo()
        
        local k
        for k=1,#arbusto do
               arbusto[k].y = arbusto[k].y - v
            end    
        
    end




    local function movePedrasCima()
        
        local k
        for k=1,#pedra do
               pedra[k].y = pedra[k].y + v
            end    
        
    end


    local function movePedrasBaixo()
        
        local k
        for k=1,#pedra do
               pedra[k].y = pedra[k].y - v
            end    
        
    end


    local moveCenarioParaCima = function()
            
                
        posicaoFundoY = posicaoFundoY + v
        background.y = posicaoFundoY
        caveira.y = caveira.y + v
        movePedrasCima()
              

            
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
        caveira.y = caveira.y - v
        movePedrasBaixo()
        
            
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
                moveArbustosCima() 
                walkY = -5
                walkX = 0
            elseif e.target.myName == "down" then
                player:setSequence("MoveDown")
                moveCenarioParaBaixo()
                moveArbustosBaixo() 
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