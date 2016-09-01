local function run(msg)
if msg.text == "ابول" then
  return "با باباییم چیکار داری؟"
end
if msg.text == "مریم" then
  return "با مامانیم چیکار داری؟"
end
end

return {
  description = "Chat With Robot Server", 
  usage = "chat with robot",
  patterns = {
   
    "^ابول$",
    "^مریم$"
    }, 
  run = run,

  pre_process = pre_process
}
