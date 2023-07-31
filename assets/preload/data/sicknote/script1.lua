local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.5);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
 
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then
		startDialogue('dialogue', 'FNAF 1 - Main Menu Theme');
	end
end