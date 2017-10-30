local WorkerAnt = {}

local composer = require("composer")




function WorkerAnt.new(instance, nameSequence, screenX, screenY)

		local scene = composer.getScene(composer.getSceneName("current"))
    	--physics.addBody(instance, "dynamic", { friction = 1.0, bounce = 0.5})

	    instance.life =3 
	    instance.score=100  
	    local sheetData = {width = 120, height= 120,numFrames=12}



		local sheetWorkerAnt = graphics.newImageSheet("ativos/img/WorkerAnt2.png",sheetData) 

		local sequenceWorkerAnt = 
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
	

    
	    instance.spriteWorkerAnt = display.newSprite(sheetWorkerAnt,sequenceWorkerAnt)
		instance.spriteWorkerAnt.x = screenX
		instance.spriteWorkerAnt.y = screenY
		instance.spriteWorkerAnt.name = "workerAnt"
		instance.spriteWorkerAnt:setSequence(nameSequence)
		    

		function instance:isLife()

			return self.life>0
				
		end

		function instance:dead()
			if not self.isLife() then
				self.life = 0
			end
		end

		function instance:useLife()

			if self.isLife() then
				self.life = self.life - 1
			else
				self.dead() 	
			end
        end

	return instance

end

return WorkerAnt