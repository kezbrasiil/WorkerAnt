

local composer = require( "composer" )
local scene = composer.newScene()



function scene:create( )
    local sceneGroup = self.view

    local background = display.newImageRect("ativos/img/verde.png", 1800,3000)
    sceneGroup:insert(background)

    local titleGame = display.newImage("ativos/img/Credits.png", 400,400 )    
    titleGame.x = display.contentWidth  * 0.5
    titleGame.y = 50
    sceneGroup:insert(titleGame)

    local paint = {
        type = "image",
        filename = "ativos/img/avatar.jpg"
    }

    local perfil = display.newCircle( 120, 280, 60 )
    perfil.fill = paint
    sceneGroup:insert(perfil)

    function perfil:tap()
        system.openURL( "https://github.com/wilkervinicius?tab=repositories" )
    end

    perfil:addEventListener("tap", perfil)

    local logo = display.newImage("ativos/img/logoGame.png", display.contentWidth/2 , 450)
    logo.width = 300
    logo.height = 250
    sceneGroup:insert(logo)

    local info = {}

    info[1] = display.newText("Wilker Vinicius\nwilkervinicius@gmail.com", 540, 400, display.contentWidth - 140, 300, "Verdana", 30  )
    sceneGroup:insert(info[1])

    info[2] = display.newText("Github: https://github.com/wilkervinicius/", 500, 1500, display.contentWidth - 140, 300, "Verdana", 30  )
    sceneGroup:insert(info[2])

--    info[2]:addEventListener("tap", function()
--        system.openURL( "https://github.com/fgleilsonf/math-ninja" )
--    end)

    info[3] = display.newText("Projeto: AntWorker \nDisciplina: Estágio 1 - Uni7", 500, display.contentHeight - 250, display.contentWidth - 140, 300, "Verdana", 30  )
    sceneGroup:insert(info[3])

    info[4] = display.newText("Orientador: Eduardo Mendes", 500, display.contentHeight - 150 , display.contentWidth - 150, 300, "Verdana", 30  )
    sceneGroup:insert(info[4])

    info[5] = display.newText("Corona API documentação: https://docs.coronalabs.com", 500, display.contentHeight - 90   , display.contentWidth - 140, 300, "Verdana", 30  )
    sceneGroup:insert(info[5])

--    info[5]:addEventListener("tap", function()
--        system.openURL( "https://docs.coronalabs.com" )
--    end)

    info[6] = display.newText("Github projeto base: https://github.com/Alecxsander/race", 500, display.contentHeight , display.contentWidth - 140, 300, "Verdana", 30  )
    sceneGroup:insert(info[6])

--    info[6]:addEventListener("tap", function()
--        system.openURL( "https://github.com/germc/Samurai-Fruit" )
--    end)

    info[7] = display.newText("Versão: 1.0", 500, display.contentHeight + 100  , display.contentWidth - 140, 300, "Verdana", 30  )
    sceneGroup:insert(info[7])

    local back = display.newImage("ativos/img/back.png", display.contentWidth  * 0.87, display.contentHeight )
    back.width = 180
    back.height = 120
    sceneGroup:insert(back)

    function back:tap()
        composer.removeScene("menu")

        composer.gotoScene( "menu", {time=800, effect="crossFade"} )
      --  composer.removeScene( "credits")
    end

    back:addEventListener("tap", back)
end

function scene:show( ) end
function scene:hide( ) end
function scene:destroy( )  back:removeEventListener("tap", back) end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene