function start (song)

end


function update (elapsed)

end

function beatHit (beat)

end

function stepHit (step)
    if curStep == 256 then
        for i=0,7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'],getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if curStep == 340 then
        for i=0,7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'],getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if curStep == 460 then
        for i=0,7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'],getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if curStep == 555 then
        for i=0,7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'],getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if curStep == 810 then
        for i=0,7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'],getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
    if curStep == 893 then
        for i=0,7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'],getActorAngle(i) + 360, 0.1, 'setDefault')
        end
    end
end