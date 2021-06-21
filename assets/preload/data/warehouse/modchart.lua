function start (song)
	math.randomseed(os.time())
	microList = {'warm up!', 'spooky dance', 'help tankman is stuttering', 'stay fresh', 'break hearts'};
	curSong = 0;
	hasdoneit = 0;
end

function genNewSong()
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
	curSong = newsong
	playInst('warehouse/' .. newsong);
	playInst('warehouse/' .. newsong);
end


function update (elapsed) -- example https://twitter.com/KadeDeveloper/status/1382178179184422918
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
if beat >= 4 then
  destroySprite('infiniteugh')
  destroySprite('infiniteugh')
  destroySprite('infiniteugh') --tripling to always make sure
  hasdoneit = 0
end
print(beat);
print(songNotes);
print(((crochet * 4) * ((songNotes)* 4)));
if (beat % ((songNotes)* 4) == 0) then
	genNewSong()
end
end

function stepHit (step)
if step == 1 then
makeText(microList[curSong], "infiniteugh", 0.0)
end
if step >= 16 then
destroySprite('infiniteugh')
end
end

function keyPressed (key)
   -- do nothing
end

print("Mod Chart script loaded :)")