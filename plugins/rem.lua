local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '"'..#result..'" 倬蹖丕賲 丕禺蹖乇 爻賵倬乇 诏乇賵賴 丨匕賮 卮丿', ok_cb, false)
  else
    send_msg(extra.chatid, '鬲毓丿丕丿 倬蹖丕賲 賲賵乇丿 賳馗乇 卮賲丕 倬丕讴 卮丿', ok_cb, false)
  end
end
local function run(msg, matches)
  if matches[1] == 'dlpm' and is_owner(msg) then
    if msg.to.type == 'channel' then
      if tonumber(matches[2]) > 1000000 or tonumber(matches[2]) < 1 then
        return "鬲毓丿丕丿 亘蹖卮鬲乇 丕夭 1 賲噩丕夭 丕爻鬲"
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
    else
      return "賮賯胤 丿乇 爻賵倬乇诏乇賵賴 賲賲讴賳 丕爻鬲"
    end
  else
    return "卮賲丕 丿爻鬲乇爻蹖 賳丿丕乇蹖丿"
  end
end

return {
    patterns = {
        '^[!/#](dlpm) (%d*)$'
    },
    run = run
}
