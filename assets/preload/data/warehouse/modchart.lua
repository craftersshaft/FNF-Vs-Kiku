function start (song)
	math.randomseed(os.time())
end


function update (elapsed) -- example https://twitter.com/KadeDeveloper/status/1382178179184422918
-- do nothing
end

function beatHit (beat)
microList = {'warm up!'}
	if beat % 8 == 0 then
	newsong = math.random(#microList)	
    playInst('warehouse/'+tostring(newsong))
	replaceNoteDataFromJSON('warehouse/'+tostring(newsong))
    end
	if beat == 0 then
   makeText(microList[newsong], "infiniteugh")
   end
	if beat % 4 == 0 then
   destroySprite('infiniteugh')
   end
end

function stepHit (step)
   -- do nothing
end

function keyPressed (key)
   -- do nothing
end

print("Mod Chart script loaded :)")