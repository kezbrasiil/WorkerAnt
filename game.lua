local composer = require( "composer" )
local fisica = require("physics")
local entidadeWorkerAnt = require("entidades.workerAnt")
local antBlackSheet = require("entidades.antBlack") 
local scene = composer.newScene()
local gameLoopTimer





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
 
    composer.removeScene( "menu")
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    local myGroup = display.newGroup()
    local posicaoFundoY = 500
    local background = display.newImageRect("background.jpg", 800,3500 )
    myGroup:insert(background)
    background.x = display.contentCenterX
    background.y = posicaoFundoY
  --  fisica.addBody(background,"static" ,{friction = 0.3})
   -- background.gravityScale = 1.0   
     
    -----cenario composto de arbutos que servirá de obstatuculo para nossa personagem
    ---- primeira linha horizontal
    local arbusto = {} 
    arbusto[1]= display.newImageRect(myGroup, "ativos/img/arbustos.png", 200,200)
    arbusto[1].x =  0
    arbusto[1].y = 900
    fisica.addBody(arbusto[1],"static", {radius = 45})

    arbusto[2]= display.newImageRect(myGroup, "ativos/img/arbustos.png", 200,200)
    arbusto[2].x =  100
    arbusto[2].y = 900
    fisica.addBody(arbusto[2],"static", {radius = 45})

    arbusto[3]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[3].x =  200
    arbusto[3].y = 900
    fisica.addBody(arbusto[3],"static", {radius = 45})


    arbusto[4]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[4].x =  300
    arbusto[4].y = 900
    fisica.addBody(arbusto[4],"static", {radius = 45})


    arbusto[5]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[5].x =  400
    arbusto[5].y = 900
    fisica.addBody(arbusto[5],"static", {radius = 45})


    arbusto[6]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[6].x =  500
    arbusto[6].y = 900
    fisica.addBody(arbusto[6],"static", {radius = 45})

    
    --- entrada inicial do personagem
    arbusto[7]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[7].x =  display.contentWidth
    arbusto[7].y = 940
    arbusto[7].rotation = 90
    fisica.addBody(arbusto[7],"static", {radius = 45})

    arbusto[8]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[8].x =  display.contentWidth
    arbusto[8].y = 1000
    arbusto[8].rotation = 90
    fisica.addBody(arbusto[8],"static", {radius = 45})

    arbusto[9]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[9].x =  display.contentWidth
    arbusto[9].y = 1100
    arbusto[9].rotation = 90
    fisica.addBody(arbusto[9],"static", {radius = 45})


    arbusto[10]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[10].x =  display.contentWidth
    arbusto[10].y = 1200
    --arbusto[10].rotation =
    fisica.addBody(arbusto[10],"static", {radius = 45})
    
  --- finaliza entrada caminho inicial--


    --- segunca linha horizontal
    arbusto[11]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[11].x =  display.contentWidth
    arbusto[11].y = 600
    fisica.addBody(arbusto[11],"static", {radius = 45})

    arbusto[12]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[12].x =  display.contentWidth -100
    arbusto[12].y = 600
    fisica.addBody(arbusto[12],"static", {radius = 45})

    arbusto[13]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[13].x =  display.contentWidth -200
    arbusto[13].y = 600
    fisica.addBody(arbusto[13],"static", {radius = 45})


    arbusto[14]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[14].x =  display.contentWidth - 300
    arbusto[14].y = 600
    fisica.addBody(arbusto[14],"static", {radius = 45})


    arbusto[15]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[15].x =  display.contentWidth - 400
    arbusto[15].y = 600
    fisica.addBody(arbusto[15],"static", {radius = 45})


    arbusto[16]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[16].x =  display.contentWidth - 500
    arbusto[16].y = 600
    fisica.addBody(arbusto[16],"static", {radius = 45})


    arbusto[17]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[17].x =  display.contentWidth - 500
    arbusto[17].y = 600
    fisica.addBody(arbusto[17],"static", {radius = 45})


---fim segunda linha horizontal

-- terceira linha horizontal
    arbusto[18]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[18].x =  0
    arbusto[18].y = 300
    fisica.addBody(arbusto[18],"static", {radius = 45})

    arbusto[19]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[19].x =  100
    arbusto[19].y = 300
    fisica.addBody(arbusto[19],"static", {radius = 45})

    arbusto[20]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[20].x =  200
    arbusto[20].y = 300
    fisica.addBody(arbusto[20],"static", {radius = 45})


    arbusto[21]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[21].x =  display.contentWidth - 200
    arbusto[21].y = 300
    fisica.addBody(arbusto[21],"static", {radius = 45})


    arbusto[22]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[22].x =  display.contentWidth - 100
    arbusto[22].y = 300
    fisica.addBody(arbusto[22],"static", {radius = 45})


    arbusto[23]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[23].x =  display.contentWidth
    arbusto[23].y = 300
    fisica.addBody(arbusto[23],"static", {radius = 45})

----- fim terceira linha horizontal


--- inicio da primeira parede de arbustos a esquerda
    arbusto[24]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[24].x =  0
    arbusto[24].y = 950
    arbusto[24].rotation = 90
    fisica.addBody(arbusto[24],"static", {radius = 45})

    arbusto[25]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[25].x =  0
    arbusto[25].y = 800
    arbusto[25].rotation = 90
    fisica.addBody(arbusto[25],"static", {radius = 45})

    arbusto[26]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[26].x =  0
    arbusto[26].y = 700
    arbusto[26].rotation = 90
    fisica.addBody(arbusto[26],"static", {radius = 45})


    arbusto[27]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[27].x =  0
    arbusto[27].y = 600
    --arbusto[10].rotation =
    fisica.addBody(arbusto[27],"static", {radius = 45})


    arbusto[28]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[28].x =  0
    arbusto[28].y = 500
    --arbusto[10].rotation =
    fisica.addBody(arbusto[28],"static", {radius = 45})


    arbusto[29]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[29].x =  0
    arbusto[29].y = 400
    --arbusto[10].rotation =
    fisica.addBody(arbusto[29],"static", {radius = 45})


    arbusto[30]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[30].x =  0
    arbusto[30].y = 300
    --arbusto[10].rotation =
    fisica.addBody(arbusto[30],"static", {radius = 45})


    arbusto[31]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[31].x =  0
    arbusto[31].y = 200
    --arbusto[10].rotation =
    fisica.addBody(arbusto[31],"static", {radius = 45})


    arbusto[32]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[32].x =  0
    arbusto[32].y = 100
    --arbusto[10].rotation =
    fisica.addBody(arbusto[32],"static", {radius = 45})


    arbusto[33]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[33].x =  0
    arbusto[33].y =  -100    --arbusto[10].rotation =
    fisica.addBody(arbusto[33],"static", {radius = 45})



    arbusto[34]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[34].x =  0
    arbusto[34].y =  -200    --arbusto[10].rotation =
    fisica.addBody(arbusto[34],"static", {radius = 45})



    arbusto[35]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[35].x =  0
    arbusto[35].y =  -300    --arbusto[10].rotation =
    fisica.addBody(arbusto[35],"static", {radius = 45})



    arbusto[36]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[36].x =  0
    arbusto[36].y =  -400    --arbusto[10].rotation =
    fisica.addBody(arbusto[36],"static", {radius = 45})

    arbusto[37]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[37].x =  0
    arbusto[37].y =  -500    --arbusto[10].rotation =
    fisica.addBody(arbusto[37],"static", {radius = 45})
--- final da primeira parede de arbustos a esquerda



---inicio parde de arbustos a direita

    arbusto[38]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[38].x =  display.contentWidth
    arbusto[38].y = 500
    --arbusto[10].rotation =
    fisica.addBody(arbusto[38],"static", {radius = 45})


    arbusto[39]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[39].x =  display.contentWidth
    arbusto[39].y = 400
    --arbusto[10].rotation =
    fisica.addBody(arbusto[39],"static", {radius = 45})


    arbusto[40]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[40].x =  display.contentWidth
    arbusto[40].y = 300
    --arbusto[10].rotation =
    fisica.addBody(arbusto[40],"static", {radius = 45})


    arbusto[41]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[41].x =  display.contentWidth
    arbusto[41].y = 200
    --arbusto[10].rotation =
    fisica.addBody(arbusto[41],"static", {radius = 45})


    arbusto[42]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[42].x =  display.contentWidth
    arbusto[42].y = 100
    --arbusto[10].rotation =
    fisica.addBody(arbusto[42],"static", {radius = 45})


    arbusto[43]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[43].x =  display.contentWidth
    arbusto[43].y =  -100    --arbusto[10].rotation =
    fisica.addBody(arbusto[43],"static", {radius = 45})



    arbusto[44]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[44].x =  display.contentWidth
    arbusto[44].y =  -200    --arbusto[10].rotation =
    fisica.addBody(arbusto[44],"static", {radius = 45})



    arbusto[45]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[45].x =  display.contentWidth
    arbusto[45].y =  -300    --arbusto[10].rotation =
    fisica.addBody(arbusto[45],"static", {radius = 45})



    arbusto[46]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[46].x =  display.contentWidth
    arbusto[46].y =  -400    --arbusto[10].rotation =
    fisica.addBody(arbusto[36],"static", {radius = 45})

    arbusto[47]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[47].x =  display.contentWidth
    arbusto[47].y =  -500    --arbusto[10].rotation =
    fisica.addBody(arbusto[47],"static", {radius = 45})


---- inicio arbustos e pedras ao centro

    local pedra={}

    pedra[1]= display.newImageRect(myGroup,"ativos/img/pedra.png", 150,200)
    pedra[1].x = display.contentWidth-330
    pedra[1].y = -120
    pedra[1].name = "pedra"
    fisica.addBody(pedra[1], "static", {radius = 45}, {bounce=0})        

    arbusto[48]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[48].x =  display.contentWidth - 100
    arbusto[48].y =  -100    --arbusto[10].rotation =
    fisica.addBody(arbusto[48],"static", {radius = 45})
    

    arbusto[49]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[49].x =  display.contentWidth - 200
    arbusto[49].y =  -100    --arbusto[10].rotation =
    fisica.addBody(arbusto[49],"static", {radius = 45})            


    arbusto[50]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[50].x =  display.contentWidth-330
    arbusto[50].y = -290
    arbusto[50].rotation = 90
    fisica.addBody(arbusto[50],"static", {radius = 45})


    arbusto[51]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[51].x =  display.contentWidth-330
    arbusto[51].y = -390
    arbusto[51].rotation = 90
    fisica.addBody(arbusto[51],"static", {radius = 45})

    arbusto[52]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[52].x =  display.contentWidth-330
    arbusto[52].y = -490
    arbusto[52].rotation = 90
    fisica.addBody(arbusto[52],"static", {radius = 45})

--- final arbustos e pedras ao centro

-- quarta linha horizontal
    arbusto[53]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[53].x =  0
    arbusto[53].y = -1000
    fisica.addBody(arbusto[53],"static", {radius = 45})

    arbusto[54]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[54].x =  100
    arbusto[54].y = -1000
    fisica.addBody(arbusto[54],"static", {radius = 45})

    arbusto[55]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[55].x =  200
    arbusto[55].y = -1000
    fisica.addBody(arbusto[55],"static", {radius = 45})


    arbusto[56]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[56].x =  display.contentWidth - 200
    arbusto[56].y = -1000
    fisica.addBody(arbusto[56],"static", {radius = 45})


    arbusto[57]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[57].x =  display.contentWidth - 100
    arbusto[57].y = -1000
    fisica.addBody(arbusto[57],"static", {radius = 45})


    arbusto[58]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[58].x =  display.contentWidth
    arbusto[58].y = -1000
    fisica.addBody(arbusto[58],"static", {radius = 45})




--- final quarta linha horizontal


--- inicio corredor com arbustos verticais

    arbusto[59]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 300,200)
    arbusto[59].x =  220
    arbusto[59].y = -1100
    arbusto[59].rotation = 80
    arbusto[59].myName = "arbustos"
    fisica.addBody(arbusto[59],"static", {radius = 45})



    arbusto[60]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 300,200)
    arbusto[60].x =  220
    arbusto[60].y = -1200
    arbusto[60].rotation = 80
    arbusto[60].myName = "arbustos"
    fisica.addBody(arbusto[60],"static", {radius = 45})


    arbusto[61]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 300,200)
    arbusto[61].x =  220
    arbusto[61].y = -1300
    arbusto[61].rotation = 80
    arbusto[61].myName = "arbustos"
    fisica.addBody(arbusto[61],"static", {radius = 45})


    arbusto[62]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 300,200)
    arbusto[62].x =  display.contentWidth - 220
    arbusto[62].y = -1100
    arbusto[62].rotation = 80
    arbusto[62].myName = "arbustos"
    fisica.addBody(arbusto[62],"static", {radius = 45})



    arbusto[63]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 300,200)
    arbusto[63].x =  display.contentWidth - 220
    arbusto[63].y = -1200
    arbusto[63].rotation = 80
    arbusto[63].myName = "arbustos"
    fisica.addBody(arbusto[63],"static", {radius = 45})


    arbusto[64]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 300,200)
    arbusto[64].x =  display.contentWidth - 220
    arbusto[64].y = -1300
    arbusto[64].rotation = 80
    arbusto[64].myName = "arbustos"
    fisica.addBody(arbusto[64],"static", {radius = 45})



--- final corredor com arbustos verticais


--- inicio quinta linha horizontal

    arbusto[65]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[65].x =  0
    arbusto[65].y = -1400
    arbusto[65].myName = "arbustos"
    fisica.addBody(arbusto[65],"static", {radius = 45})


    arbusto[66]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[66].x =  100
    arbusto[66].y = -1400
    arbusto[66].myName = "arbustos"
    fisica.addBody(arbusto[66],"static", {radius = 45})


    arbusto[67]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[67].x =  200
    arbusto[67].y = -1400
    arbusto[67].myName = "arbustos"
    fisica.addBody(arbusto[67],"static", {radius = 45})



    arbusto[68]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[68].x =  display.contentWidth - 200
    arbusto[68].y = -1400
    arbusto[68].myName = "arbustos"
    fisica.addBody(arbusto[68],"static", {radius = 45})



    arbusto[69]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[69].x =  display.contentWidth - 100
    arbusto[69].y = -1400
    arbusto[69].myName = "arbustos"
    fisica.addBody(arbusto[69],"static", {radius = 45})



    arbusto[70]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 200,200)
    arbusto[70].x =  display.contentWidth
    arbusto[70].y = -1400
    arbusto[70].myName = "arbustos"
    fisica.addBody(arbusto[70],"static", {radius = 45})


--- final da quinta linha horizontal


---- linha lateral final

    arbusto[71]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 300,200)
    arbusto[71].x =  display.contentWidth 
    arbusto[71].y = -1500
    arbusto[71].rotation = 80
    arbusto[71].myName = "arbustos"
    fisica.addBody(arbusto[71],"static", {radius = 45})



    arbusto[72]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 300,200)
    arbusto[72].x =  display.contentWidth 
    arbusto[72].y = -1600
    arbusto[72].rotation = 80
    arbusto[72].myName = "arbustos"
    fisica.addBody(arbusto[72],"static", {radius = 45})


    arbusto[73]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 300,200)
    arbusto[73].x =  display.contentWidth 
    arbusto[73].y = -1700
    arbusto[73].rotation = 80
    arbusto[73].myName = "arbustos"
    fisica.addBody(arbusto[73],"static", {radius = 45})



    arbusto[74]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 300,200)
    arbusto[74].x =  0 
    arbusto[74].y = -1500
    arbusto[74].rotation = 80
    arbusto[74].myName = "arbustos"
    fisica.addBody(arbusto[74],"static", {radius = 45})



    arbusto[75]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 300,200)
    arbusto[75].x =  0
    arbusto[75].y = -1600
    arbusto[75].rotation = 80
    arbusto[75].myName = "arbustos"
    fisica.addBody(arbusto[75],"static", {radius = 45})


    arbusto[76]= display.newImageRect(myGroup,"ativos/img/arbustos.png", 300,200)
    arbusto[76].x =  0
    arbusto[76].y = -1700
    arbusto[76].rotation = 80
    arbusto[76].myName = "arbustos"
    fisica.addBody(arbusto[76],"static", {radius = 45})


---- final lateral final



---fechamento do cenario com pedras


    pedra[2]= display.newImageRect(myGroup,"ativos/img/pedra.png", 150,200)
    pedra[2].x = display.contentWidth
    pedra[2].y = -1870
    pedra[2].name = "pedra"
    fisica.addBody(pedra[2], "static", {bounce=0})        

    pedra[3]= display.newImageRect(myGroup,"ativos/img/pedra.png", 150,200)
    pedra[3].x = display.contentWidth - 150
    pedra[3].y = -1870
    pedra[3].name = "pedra"
    fisica.addBody(pedra[3], "static", {bounce=0})        

    pedra[4]= display.newImageRect(myGroup,"ativos/img/pedra.png", 150,200)
    pedra[4].x = display.contentWidth - 250
    pedra[4].y = -1870
    pedra[4].name = "pedra"
    fisica.addBody(pedra[4], "static", {bounce=0})        

    pedra[5]= display.newImageRect(myGroup,"ativos/img/pedra.png", 150,200)
    pedra[5].x = display.contentWidth - 360
    pedra[5].y = -1870
    pedra[5].name = "pedra"
    fisica.addBody(pedra[5], "static", {bounce=0})        


    pedra[6]= display.newImageRect(myGroup,"ativos/img/pedra.png", 150,200)
    pedra[6].x = -10
    pedra[6].y = -1870
    pedra[6].name = "pedra"
    fisica.addBody(pedra[6], "static", {bounce=0})        

    pedra[7]= display.newImageRect(myGroup,"ativos/img/pedra.png", 150,200)
    pedra[7].x = 140
    pedra[7].y = -1870
    pedra[7].name = "pedra"
    fisica.addBody(pedra[7], "static", {bounce=0})        

    pedra[8]= display.newImageRect(myGroup,"ativos/img/pedra.png", 150,200)
    pedra[8].x = 260
    pedra[8].y = -1870
    pedra[8].name = "pedra"
    fisica.addBody(pedra[8], "static", {bounce=0})        

    -- pedra[9]= display.newImageRect(myGroup,"ativos/img/pedra.png", 150,200)
    -- pedra[9].x = 300
    -- pedra[9].y = -1800
    -- pedra[9].name = "pedra"
    -- fisica.addBody(pedra[9], "static", {bounce=0})        



--- final fechamento do cenario com pedras
    -- local x
    -- for x=1,#arbusto do
    --     myGroup:insert(arbusto[i])
    -- end    

    -- local y
    -- for y=1,#pedra do
    --     myGroup:insert(pedra[y])
    -- end    


    local sheetData = {width = 128, height= 128,numFrames=24}

   ----carrega audio e efeitos sonoros
    local musicGame = audio.loadStream ( "ativos/audio/Extinction_Level_Event.mp3" ) 
    local audioSucesso = audio.loadSound("ativos/audio/sucess.wav")
    local audioCoin = audio.loadSound("ativos/audio/coin.wav")
    local audioOps = audio.loadSound("ativos/audio/ops.ogg")
    local audioOps2 = audio.loadSound("ativos/audio/ops2.ogg")
    local audioLost = audio.loadSound("ativos/audio/lostgame.wav")
    --local totalTime = audio.getDuration(musicGame)
    audio.play(musicGame)
    


    local function checkAudio()

        local checkA = audio.seek(3000, musicGame)
        if checkA == false then
            audio.rewind(musicGame) 
        end    
    end    

    
 
    --print("Tempo da musica do jogo: "..totalTime )
    


        -- pedra[2]= display.newImageRect(myGroup,"ativos/img/pedra.png", 150,200)
        -- pedra[2].x = display.contentWidth/2
        -- pedra[2].y = -430
        -- pedra[2].name = "pedra"      
        -- fisica.addBody(pedra[2], "static", {radius = 45}, {bounce=0})  

        -- pedra[3]= display.newImageRect(myGroup,"ativos/img/pedra.png", 150,200)
        -- pedra[3].x = display.contentWidth/2
        -- pedra[3].y = -650
        -- pedra[3].name = "pedra"
        -- fisica.addBody(pedra[3], "static", {radius = 45}, {bounce=0})


        local caveira = display.newImageRect(myGroup,"ativos/img/caveira.png", 400,400)
        caveira.x = display.contentWidth 
        caveira.y = 700
        --caveira.rotation = -30        
        fisica.addBody(caveira, "static", {radius = 45})

        local formigueiro = display.newImageRect(myGroup,"ativos/img/formigueiro2.png", 400,400)
        formigueiro.x = display.contentCenterX 
        formigueiro.y = 1300
        formigueiro.myName = "formigueiro"
        --caveira.rotation = -30        
        fisica.addBody(formigueiro, "static", {radius = 45})        




        



--local player = display.newRect(0,0,40,40)
    local sheet = graphics.newImageSheet("ativos/img/SheetComplete.png",sheetData)
    --local sheetAlimento = graphics.newImageSheet("ativos/img/WorkerAntSheet.png",sheetData)

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
         ------------------Com alimento--------------------------------------
         {name = "IdleUpA", start = 13, count = 1, time =  0, loopCount = 1},
        
         {name = "IdleDownA", start = 22, count = 1, time =  0, loopCount = 1},     
         
         {name = "IdleLeftA", start = 16, count = 1, time =  0, loopCount = 1},     
         
         {name = "IdleRightA", start = 19, count = 1, time =  0, loopCount = 1},     
         
         {name = "MoveUpA", start = 14, count = 2, time =80, loopCount = 0},     
         
         {name = "MoveDownA", start = 23, count = 2, time =80, loopCount = 0},
         
         {name = "MoveLeftA", start = 17 , count = 2, time =80, loopCount = 0},
         
         {name = "MoveRightA", start = 20, count = 2, time =80, loopCount = 0},
         
    }

    --local player = display.newGroup()
    -- local player2 = display.newSprite(sheetAlimento,sequenceSprite)
    -- fisica.addBody(player2, "dynamic",{friction = 0.5})
    -- player2.gravityScale = 0
    -- player2.myName = "antWorker"
    -- player2.isBodyActive = false
    -- player2.isVisible = false
    --local player = display.newSprite(sheet,sequenceSprite)
    --player:insert(workerAntComAlimento)

    local player = display.newSprite(sheet,sequenceSprite)
    --player:insert(workerAntSemAlimento)
    fisica.addBody(player, "dynamic",{friction = 0.5})
    player.gravityScale = 0
    player.isFixedRotation = true

    player.x = 450
    player.y= 1150
    player.myName = "antWorker"

    comAlimento = false
    
    local life = 3 
    local score = 1000
    local died = false
    local number  = 120   
    
      
    -- local cronometro = display.newText( number, 0, 0, native.systemFont, 50 )
    -- cronometro.x = _W/2
    -- cronometro.y = 20
    --cronometro:setTextColor( 0, 255, 0 )
    local tempo = 1000 


    local uiGroup  = display.newGroup( )
    -- Display lives and score
    livesText = display.newText( uiGroup, "Lives: " ..life, 100, 0, native.systemFont, 40 )
    timeText = display.newText( uiGroup, "tempo: "..number, display.contentWidth/2, 0, native.systemFont, 50 )
    scoreText = display.newText( uiGroup, "Score: "..score, 650, 0, native.systemFont, 40 )
 

    local folha = display.newImageRect(myGroup,"ativos/img/Sheet.png", 150,150 )
    folha.x = display.contentWidth/2
    folha.y = -1600
    folha.myName = "folha"
    fisica.addBody(folha,"static" , {radius = 45})


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



    local fungo1 = display.newImageRect(myGroup,"ativos/img/pipoca.png",40,40)
    fungo1.x = display.contentWidth -100
    fungo1.y = pedra[1].y - 100
    fungo1.myName="fungo1"
    fisica.addBody(fungo1,"static", {radius = 35})



    local fungo2 = display.newImageRect(myGroup,"ativos/img/pipoca.png",40,40)
    fungo2.x = display.contentWidth -100
    fungo2.y = arbusto[14].y - 100
    fungo2.myName="fungo2"
    fisica.addBody(fungo2,"static", {radius = 35})
    


   -- variavel v é a velocidade do cenário
   -- movimenta cenario para cima
    local v = 100
    contador = 0

    local function keepPlayerScreen()
        if player.x > display.contentWidth - 100 then
            player.rotation = 0
            player.x = display.contentWidth - 200
        elseif player.x < 100 then
            player.rotation = 0
            player.x = 140
        end
    end


    local antBlack = antBlackSheet
    local formigaPreta
    local formigaPretaTable = {}


    local function criaFormigaPreta()
    
    
        formigaPreta = antBlack:getAntBlack()
        table.insert( formigaPretaTable, formigaPreta )
        formigaPreta.myName = "antBlack"
        fisica.addBody(formigaPreta,"static",{friction=0.3, radius = 35})
        formigaPreta.gravityScale = 0   

        local whereFrom = math.random(4)

        if ( whereFrom == 1 ) then
         --   print("Posicao 1")
            -- From the left
            formigaPreta:setSequence( "MoveLeft" )
            formigaPreta.x = display.contentWidth + 60
            formigaPreta.y =  pedra[1].y + 100
            transition.to( formigaPreta, {time = 5000, x = -200 , onStart = formigaPreta:play(), }  )             
              
        elseif ( whereFrom == 2 ) then
            --print("Posicao 2")
            -- From the top
            formigaPreta:setSequence( "MoveRight" )
            formigaPreta.x =   -60
            formigaPreta.y = arbusto[59].y + 200
            transition.to( formigaPreta, {time = 5000, x = display.contentWidth + 200 , onStart = formigaPreta:play(),} )
        
        elseif ( whereFrom == 3 ) then
         --   print("Posicao 3")
            -- From the right
            formigaPreta:setSequence( "MoveRight" )
            formigaPreta.x =  -60
            formigaPreta.y = arbusto[59].y + 300
            transition.to( formigaPreta, {time = 5000, x = display.contentWidth + 200 , onStart = formigaPreta:play(), })

        elseif ( whereFrom == 4 ) then
         --   print("Posicao 1")
            -- From the left
            formigaPreta:setSequence( "MoveLeft" )
            formigaPreta.x = display.contentWidth + 60
            formigaPreta.y =  arbusto[59].y + 400
            transition.to( formigaPreta, {time = 5000, x = -200 , onStart = formigaPreta:play(), }  )             
            
        end

    end





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


    local function moveFormigaPretaCima()

        local i = 1
        for i=1, #formigaPretaTable do
            
            formigaPretaTable[i].y =  formigaPretaTable[i].y + v
        end

    end 
    local function moveFormigaPretaBaixo()

        local i = 1
        for i=1, #formigaPretaTable do
            
            formigaPretaTable[i].y =  formigaPretaTable[i].y - v
        end

    end 



    local moveCenarioParaCima = function()
            
                
        posicaoFundoY = posicaoFundoY + v
        background.y = posicaoFundoY
        caveira.y = caveira.y + v
        formigueiro.y = formigueiro.y + v
        movePedrasCima()
       
        moveFormigaPretaCima()
        
        folha.y = folha.y + v
        fungo1.y = fungo1.y + v
        fungo2.y = fungo2.y + v
        

            
        if background.y > 1500 then
            posicaoFundoY = 500
            contador = contador + 1
        end

            
    end

    local moveCenarioParaBaixo = function()
            
                
        posicaoFundoY = posicaoFundoY - v
        background.y = posicaoFundoY
        caveira.y = caveira.y - v
        formigueiro.y = formigueiro.y - v
        movePedrasBaixo()
        moveFormigaPretaBaixo()
       
        
        folha.y = folha.y - v
        fungo1.y = fungo1.y - v
        fungo2.y = fungo2.y - v
            
        if background.y > -1500 then
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
        print("player y "..player.y.." player.x "..player.x)
        print()
       -- print("Audio Principal "..audio.seek(4000,musicGame))
        print("Vidas "..life)

        if (e.phase =="began" or e.phase =="moved") then

            if comAlimento == false then
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
                    walkY = 3
                    walkX = 0
                elseif e.target.myName == "right" then
                    player:setSequence("MoveRight")
                    
                    walkX = 10
                    walkY = 0

                elseif e.target.myName == "left" then
                    player:setSequence("MoveLeft")
                    walkX = -10
                    walkY = 0
                end
        
            else

                if e.target.myName == "up" then
                    player:setSequence("MoveUpA")            
                    moveCenarioParaCima()   
                    moveArbustosCima() 
                    walkY = -5
                    walkX = 0
                elseif e.target.myName == "down" then
                    player:setSequence("MoveDownA")
                    moveCenarioParaBaixo()
                    moveArbustosBaixo() 
                    walkY = 3
                    walkX = 0
                elseif e.target.myName == "right" then
                    player:setSequence("MoveRightA")
                    
                    walkX = 10
                    walkY = 0

                elseif e.target.myName == "left" then
                    player:setSequence("MoveLeftA")
                    walkX = -10
                    walkY = 0
                end

            end   

        else 
            
            if comAlimento==false then
                if e.target.myName == "up" then
                    player:setSequence("IdleUp")            
                    
                elseif e.target.myName == "down" then
                    player:setSequence("IdleDown")
                    
                elseif e.target.myName == "right" then
                    player:setSequence("IdleRight")
                    
                elseif e.target.myName == "left" then
                    player:setSequence("IdleLeft")
                    
                end
            else 
                if e.target.myName == "up" then
                    player:setSequence("IdleUpA")            
                    
                elseif e.target.myName == "down" then
                    player:setSequence("IdleDownA")
                    
                elseif e.target.myName == "right" then
                    player:setSequence("IdleRightA")
                    
                elseif e.target.myName == "left" then
                    player:setSequence("IdleLeftA")
                    
                end

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
        myGroup:insert(buttons[i])
            
    end



    local function removeFormigaPreta(  )
        -- Remove antBlack which have drifted off screen
        for i = #formigaPretaTable, 1, -1 do
            local thisABlack = formigaPretaTable[i]

            if died ==false then
                if ( thisABlack .x < -100 or
                 thisABlack .x > display.contentWidth + 100) then
            
                    display.remove( thisABlack )
                    table.remove( formigaPretaTable, i )    
                end
            else
                display.remove( thisABlack )
                table.remove( formigaPretaTable, i )    
            end
        end
    end
    
    local finalGame = nil
    local function gameOver()

        composer.setVariable( "finalScore", score )    
        composer.setVariable( "finalTime", number )
        composer.setVariable( "finalGame", finalGame )
        display.remove(myGroup)
        myGroup=nil
        Runtime:removeEventListener("enterFrame", update)
        display.remove(player)
        player = nil
      --  display.remove(player)
        timer.cancel(gameLoopTimer)
      --  table.remove(formigaPretaTable)
      --  display.remove(formigaPreta)
        
        Runtime:removeEventListener( "collision", onCollision )
        
        display.remove(uiGroup)
        uiGroup = nil
        audio.resume(musicGame)
  --      composer.removeScene("game")
    --    composer.removeScene("gameover")
      --  composer.removeScene("menu")
        composer.gotoScene("gameover", {time = 500, effect = "crossFade" })
        
        
    end

    function contaTempo()
        number = number - 1
         -- cronometro.text = number
        if number <=30 then
         --   cronometro:setTextColor( 255, 0, 0 )
            tempo = 500
           if number == 0 then
                --cronometro.text ="You Lost!!"
                --player:stop() 
                finalGame = "Seu Formigueiro não sobreviveu.\nTente Novamente!"
                audio.play(audioOps) 
                audio.play(audioLost) 
                died = true 
                timer.performWithDelay( 3000, gameOver)

           end

        end 

    end


    local function restorePlayer()
 
          player.isBodyActive = false
          
        --player.x = display.contentCenterX
        
        if comAlimento == false then
            if player.setSequence == "MoveUp" then
            --    player.rotation = 0
                player:setSequence("IdleUp")         
                player.y = player.y + 200
            elseif player.setSequence == "MoveDown"  then
                player:setSequence("IdleDown")         
                player.y = player.y - 200
            --    player.rotation = 0
            else 
                 player.y = player.y
                 player:setSequence("IdleLeft")           
            --     player.rotation = 0      
            end
        else
            if player.setSequence == "MoveUpA" then
            --    player.rotation = 0
                player:setSequence("IdleUpA")         
                player.y = player.y + 200
            elseif player.setSequence == "MoveDownA"  then
                player:setSequence("IdleDownA")         
                player.y = player.y - 200
            --    player.rotation = 0
            else 
                 player.y = player.y
                 player:setSequence( "IdleDownA" )           
            --     player.rotation = 0      
            end
        end    
    -- Fade in the player
      if (died==false) then
          
      
            transition.to( player, { alpha=1, time=2500,
            onComplete = function()
          
                           player.isBodyActive = true
           
                        end
            } )
    
      end  
    end



    local function onCollision( event )
     
        if ( event.phase == "began" ) then
     
            local obj1 = event.object1
            local obj2 = event.object2
            if ( ( obj1.myName == "antWorker" and obj2.myName == "folha" ) or
                ( obj1.myName == "folha" and obj2.myName == "antWorker" ) )
            then
                if comAlimento == false then
                    audio.play(audioSucesso)
                    score = score + 500
                end
                comAlimento = true
                --sheet = graphics.newImageSheet("ativos/img/WorkerAntSheet.png",sheetData)
                
                
              
                player.x = folha.x 
                player.y = folha.y
                
                player:setSequence( "IdleDownA" )
                

                fisica.removeBody(folha)
                folha.isVisible = false
                
                
            end

            if ( ( obj1.myName == "antWorker" and obj2.myName == "antBlack" ) or
                ( obj1.myName == "antBlack" and obj2.myName == "antWorker" ) )
            then
                audio.play(audioOps)
                life = life - 1 
                score = score - 300
                if (score < 0) then score = 0 end
                livesText.text = "Lives: " .. life
                scoreText.text = "Score: " .. score
                if life == 0 then
                    audio.play(audioLost)
                    died = true
                   -- audio.stop()
                   -- audio.dispose(musicGame)
                   -- musicGame = nil

                    finalGame = "Seu Formigueiro não sobreviveu.\nTente Novamente!"
                    timer.performWithDelay( 3000, gameOver)

           
                else
                    player.alpha = 0
                   -- fisica.removeBody(player)
                    timer.performWithDelay( 1000, restorePlayer() )
                end
            end        


            if ( ( obj1.myName == "antWorker" and obj2.myName == "fungo1" ) or
                ( obj1.myName == "fungo1" and obj2.myName == "antWorker" ) )
            then

                if fungo1.isVisible == true then
                    audio.play(audioCoin)
                    score = score + 50
                    number = number + 30
                    scoreText.text = "Score: " .. score
                    timeText.text = "tempo: "..number
                    fungo1.isVisible = false
                end
             
            end


            if ( ( obj1.myName == "antWorker" and obj2.myName == "fungo2" ) or
                ( obj1.myName == "fungo2" and obj2.myName == "antWorker" ) )
            then
               
               if fungo2.isVisible == true then
                    audio.play(audioCoin)
                    score = score + 50
                    number = number + 10
                    scoreText.text = "Score: " .. score
                    timeText.text = "tempo: "..number
                   
                    fungo2.isVisible = false
                end
                
             
            end




            -- if ( ( obj1.myName == "antWorker" and obj2.myName == "arbustos" ) or
            --     ( obj1.myName == "arbustos" and obj2.myName == "antWorker" ) ) then
                
            --     if comAlimento ==false then

            --         if (player.setSequence=="MoveUp") then

            --             player.y = player.y + 100
            --             player:setSequence("IdleUp")
            --             moveCenarioParaBaixo()
                        
            --         elseif (player.setSequence=="MoveDown") then
                    
            --             player.y = player.y - 100
            --             player:setSequence("IdleDown")
            --             moveCenarioParaBaixo()

            --         elseif (player.setSequence=="MoveLeft") then

            --             player.x = player.x + 100
            --             player:setSequence("IdleLeft")
                        

            --         elseif (player.setSequence=="MoveRight") then    

            --             player.x = player.x - 100
            --             player:setSequence("IdleRight")

            --         end
            --     else
            --         if (player.setSequence=="MoveUpA") then

            --             player.y = player.y + 100
            --             player:setSequence("IdleUpA")
            --             moveCenarioParaBaixo()
                        
            --         elseif (player.setSequence=="MoveDownA") then
                    
            --             player.y = player.y - 100
            --             player:setSequence("IdleDownA")
            --             moveCenarioParaBaixo()

            --         elseif (player.setSequence=="MoveLeftA") then

            --             player.x = player.x + 100
            --             player:setSequence("IdleLeftA")
                        

            --         elseif (player.setSequence=="MoveRightA") then    

            --             player.x = player.x + 100
            --             player:setSequence("IdleRightA")

            --         end    
            --     end    
            --     ----Tela de parabens-----
       --     end


            if (( obj1.myName == "antWorker" and obj2.myName == "pedra" ) or
                ( obj1.myName == "pedra" and obj2.myName == "antWorker" ) ) then

            
                if comAlimento ==false then

                    if (player.setSequence=="MoveUp") then

                        player.y = player.y + 100
                        player:setSequence("IdleUp")
                        moveCenarioParaBaixo()
                        
                    elseif (player.setSequence=="MoveDown") then
                    
                        player.y = player.y - 100
                        player:setSequence("IdleDown")
                        moveCenarioParaBaixo()

                    elseif (player.setSequence=="MoveLeft") then

                        player.x = player.x + 100
                        player:setSequence("IdleLeft")
                        

                    elseif (player.setSequence=="MoveRight") then    

                        player.x = player.x - 100
                        player:setSequence("IdleRight")

                    end
                else
                    if (player.setSequence=="MoveUpA") then

                        player.y = player.y + 100
                        player:setSequence("IdleUpA")
                        moveCenarioParaBaixo()
                        
                    elseif (player.setSequence=="MoveDownA") then
                    
                        player.y = player.y - 100
                        player:setSequence("IdleDownA")
                        moveCenarioParaBaixo()

                    elseif (player.setSequence=="MoveLeftA") then

                        player.x = player.x + 100
                        player:setSequence("IdleLeftA")
                        

                    elseif (player.setSequence=="MoveRightA") then    

                        player.x = player.x + 100
                        player:setSequence("IdleRightA")

                    end    
                end
            
                ----Tela de parabens-----
            end


            if ( ( obj1.myName == "antWorker" and obj2.myName == "formigueiro" ) or
                ( obj1.myName == "formigueiro" and obj2.myName == "antWorker" ) )  then

                if  (comAlimento == true and number > 0 and died == false) then
                    finalGame = "Seu Formigueiro sobreviveu.\n Parabens!"
                    died = true
                    gameOver()
                end 
                ----Tela de parabens-----
            end

        end
    end


    Runtime:addEventListener( "collision", onCollision )



    local function updateText()
         livesText.text = "Lives: " .. life
         scoreText.text = "Score: " .. score
         timeText.text  ="tempo: "..number
    end




    local function gameLoop()

        
        contaTempo()
        updateText()
        


    -- Create new AntBlack
        criaFormigaPreta()

         removeFormigaPreta()
    end



    gameLoopTimer = timer.performWithDelay( tempo, gameLoop, 0 )


    local function update()
        
       if (died == false and player.isBodyActive ~= false) then 
       
            player.x = player.x + walkX
            player.y = player.y + walkY
            player:play()    
        end
        
       
        
        
        
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