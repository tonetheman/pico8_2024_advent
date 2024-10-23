pico-8 cartridge // http://www.pico-8.com
version 42
__lua__

local parts={}

function _init()
	music(0)

	for i=1,100 do
		local sp=rnd(2)
		if sp<0.5 then
			sp+=1
		end
		add(parts, {
			x=0+rnd(120),
			y=0,r=rnd(3),c=7,
			speed=sp,
			alive=true
		})
	end

end

function _draw()
	cls()
	for p in all(parts) do
		circfill(p.x,p.y,p.r,p.c)
	end
end

function _update()
	for p in all(parts) do
		--p.x+=p.speed
		p.y+=p.speed
		if p.y>100 then
			p.y=0
			p.r=rnd(3)
		end
	end
end

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
00010000000000000000000000000000000000000001e050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0014000015040150401303013030110301103011030110301103011030130301303015030000001606000000180301803018030180301803018030180301a0301a0301a0301c0401c0401c0401d0301d0301d030
001400001d0301c0401c0401c0401c0401a0201a0201a0201a02018030180301803018030180301803018030180301a0301a0301c0501c0501d0301d0301d0301d0301c0401c0401c0401c0401a0301a0301a030
001400001a030180301803018030180301a0301a0301a0301a0301c0501c0501c0501c0501d0301d0301d0301d030180301803018030180301603016030160301603015030150301503015030150301503015030
__music__
00 01404040
00 02404040
04 03404040
