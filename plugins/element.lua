--[[
#
#
#                 Allen - GPMod
#               Expire Time plugin
#                  
#
]]

local function pre_process(msg)
	local timetoexpire = 'unknown'
	local expiretime = redis:hget ('expiretime', get_receiver(msg))
	local now = tonumber(os.time())
	if expiretime then    
		timetoexpire = math.floor((tonumber(expiretime) - tonumber(now)) / 86400) + 1
		if tonumber("0") > tonumber(timetoexpire) and not is_sudo(msg) then
		if msg.text:match('/') then
			return send_large_msg(get_receiver(msg), '鬲丕乇蹖禺 丕鬲賯囟丕蹖 诏乇賵賴 亘賴 倬丕蹖丕賳 乇爻蹖丿.')
		else
			return
		end
	end
	if tonumber(timetoexpire) == 0 then
		if redis:hget('expires0',msg.to.id) then return msg end
		send_large_msg(get_receiver(msg), '0 乇賵夭 鬲丕 倬丕蹖丕賳 鬲丕乇蹖禺 丕賳賯囟丕蹖 诏乇賵賴 亘丕賯蹖 賲丕賳丿賴 丕爻鬲\n賳爻亘鬲 亘賴 鬲賲丿蹖丿 丕賯丿丕賲 讴賳蹖丿.')
		redis:hset('expires0',msg.to.id,'5')
	end
	if tonumber(timetoexpire) == 1 then
		if redis:hget('expires1',msg.to.id) then return msg end
		send_large_msg(get_receiver(msg), '1 乇賵夭 鬲丕 倬丕蹖丕賳 鬲丕乇蹖禺 丕賳賯囟丕蹖 诏乇賵賴 亘丕賯蹖 賲丕賳丿賴 丕爻鬲\n賳爻亘鬲 亘賴 鬲賲丿蹖丿 丕賯丿丕賲 讴賳蹖丿.')
		redis:hset('expires1',msg.to.id,'5')
	end
	if tonumber(timetoexpire) == 2 then
		if redis:hget('expires2',msg.to.id) then return msg end
		send_large_msg(get_receiver(msg), '2 乇賵夭 鬲丕 倬丕蹖丕賳 鬲丕乇蹖禺 丕賳賯囟丕蹖 诏乇賵賴 亘丕賯蹖 賲丕賳丿賴 丕爻鬲\n賳爻亘鬲 亘賴 鬲賲丿蹖丿 丕賯丿丕賲 讴賳蹖丿.')
		redis:hset('expires2',msg.to.id,'5')
	end
	if tonumber(timetoexpire) == 3 then
		if redis:hget('expires3',msg.to.id) then return msg end
		send_large_msg(get_receiver(msg), '3 乇賵夭 鬲丕 倬丕蹖丕賳 鬲丕乇蹖禺 丕賳賯囟丕蹖 诏乇賵賴 亘丕賯蹖 賲丕賳丿賴 丕爻鬲\n賳爻亘鬲 亘賴 鬲賲丿蹖丿 丕賯丿丕賲 讴賳蹖丿.')
		redis:hset('expires3',msg.to.id,'5')
	end
	if tonumber(timetoexpire) == 4 then
		if redis:hget('expires4',msg.to.id) then return msg end
		send_large_msg(get_receiver(msg), '4 乇賵夭 鬲丕 倬丕蹖丕賳 鬲丕乇蹖禺 丕賳賯囟丕蹖 诏乇賵賴 亘丕賯蹖 賲丕賳丿賴 丕爻鬲\n賳爻亘鬲 亘賴 鬲賲丿蹖丿 丕賯丿丕賲 讴賳蹖丿.')
		redis:hset('expires4',msg.to.id,'5')
	end
	if tonumber(timetoexpire) == 5 then
		if redis:hget('expires5',msg.to.id) then return msg end
		send_large_msg(get_receiver(msg), '5 乇賵夭 鬲丕 倬丕蹖丕賳 鬲丕乇蹖禺 丕賳賯囟丕蹖 诏乇賵賴 亘丕賯蹖 賲丕賳丿賴 丕爻鬲\n賳爻亘鬲 亘賴 鬲賲丿蹖丿 丕賯丿丕賲 讴賳蹖丿.')
		redis:hset('expires5',msg.to.id,'5')
	end
end
return msg
end
function run(msg, matches)
	if matches[1]:lower() == 'setexpire' then
		if not is_sudo(msg) then return end
		local time = os.time()
		local buytime = tonumber(os.time())
		local timeexpire = tonumber(buytime) + (tonumber(matches[2]) * 86400)
		redis:hset('expiretime',get_receiver(msg),timeexpire)
		return "تاریخ انقضا تنظیم شد:\nتا  "..matches[2].. " روز دیگر انقضا دارد."
	end
	if matches[1]:lower() == 'expire' then
		local expiretime = redis:hget ('expiretime', get_receiver(msg))
		if not expiretime then return '鬲丕乇蹖禺 爻鬲 賳卮丿賴 丕爻鬲' else
			local now = tonumber(os.time())
			return (math.floor((tonumber(expiretime) - tonumber(now)) / 86400) + 1) .. " 乇賵夭 丿蹖诏乇"
		end
	end

end
return {
  patterns = {
    "^[!/]([Ss]etexpire) (.*)$",
	"^[!/]([Ee]xpire)$",
  },
  run = run,
  pre_process = pre_process
}
