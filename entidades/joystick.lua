Joystick =  {}


local buttons = {}


		buttons[2] = display.newImage("/ativos/img/seta.png") -- up
		buttons[2].x = 130
		buttons[2].y = 440
		buttons[2].rotation = -90
		buttons[2].myName = "up"


		buttons[3] = display.newImage("/ativos/img/seta.png") -- down
		buttons[3].x = 130
		buttons[3].y = 520
		buttons[3].rotation = 90
		buttons[3].myName = "down"


		buttons[4] = display.newImage("/ativos/img/seta.png") -- left
		buttons[4].x = 70
		buttons[4].y = 480
		buttons[4].rotation = -180
		buttons[4].myName = "left"


		buttons[1] = display.newImage("/ativos/img/seta.png") -- right
		buttons[1].x = 190
		buttons[1].y = 480
		buttons[1].myName = "right"




--local i = 1
--	for i=1, #buttons do
-- 		buttons[i]:addEventListener("touch", touchButton)
---	end




local function touchButton(instance, x, y, e)
	-- body


			local walkX = x
			local walkY = y	

			if (e.phase =="began" or e.phase =="moved") then
				if e.target.myName == "up" then
            		intance:setSequence("MoveUp")			
			
					walkY = -3
					walkX = 0
				elseif e.target.myName == "down" then
		    		instance:setSequence("MoveDown")
					walkY = 3
					walkX = 0
				elseif e.target.myName == "right" then
		    		instance:setSequence("MoveRight")
					walkX = 3
					walkY = 0
				elseif e.target.myName == "left" then
		    		instance:setSequence("MoveLeft")
					walkX = -3
					walkY = 0
				end
	
			else 
				if e.target.myName == "up" then
            		instance:setSequence("IdleUp")			
			
				elseif e.target.myName == "down" then
		    		instance:setSequence("IdleDown")
			
				elseif e.target.myName == "right" then
		    		instance:setSequence("IdleRight")
			
				elseif e.target.myName == "left" then
		    		instance:setSequence("IdleLeft")
			
			    end
			    walkX = 0
				walkY = 0
				instance:pause()
            end
end

--Runtime:addEventListener("enterframe", touchButton)

return Joystick