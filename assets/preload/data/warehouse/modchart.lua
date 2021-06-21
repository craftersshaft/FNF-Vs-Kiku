function start (song)
	math.randomseed(os.time())
	microList = {'warm up!', 'spooky dance', 'help tankman is stuttering', 'stay fresh', 'break hearts'};
	curSong = 0;
end


function update (elapsed) -- example https://twitter.com/KadeDeveloper/status/1382178179184422918
-- do nothing
end

function beatHit (beat)
	--if beat % 4 == 0 then
	--newsong = math.random(#microList)	
	--newsong = 1
   -- playInst('warehouse/'+tostring(newsong))
	--replaceNoteDataFromJSON('warehouse/'+tostring(newsong))
   -- end
	--if beat == 0 then
   --makeText(microList[newsong], "infiniteugh")
  -- end
	--if beat % 4 == 0 then
  -- destroySprite('infiniteugh')
  -- end

print(beat);
print(songNotes);

if beat % 4 == 0 then
  destroySprite('infiniteugh')
  hasdoneit = 0
end
end

function stepHit (step)
	if step >= (((songNotes)* 4) * 4) then
	hasdoneit = 1
	local newsong = math.random(#microList);
		if (newsong == curSong) then
		newsong = newsong + 1
			if (newsong >= microList) then
			newsong = 0
			end
		end
	print(microList[newsong]);
	replaceNoteDataFromJSON("warehouse/" .. newsong)
	if hasdoneit == 1 then
	makeText(microList[newsong], "infiniteugh")
	curSong = newsong
	else
	makeText('warm up', "infiniteugh")
	end
	playInst('warehouse/' .. newsong);
	end
end

function keyPressed (key)
   -- do nothing
end

print("Mod Chart script loaded :)")