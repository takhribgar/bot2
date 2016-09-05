local function run(msg)
if msg.text == "ابول" then
  return "با باباییم چیکار داری؟"
end
if msg.text == "مریم" then
  return "با مامانیم چیکار داری؟"
end
if msg.text == "[/!#]help" then
  return "!res [username]/nReturns users name and id by username/n/n/n!log/nReturns group logs/n*Search for kick reasons using [#RTL|#spam|#lockmember]/n/n**You can use "#", "!", or "/" to begin all commands/n/n*Only owner can add members to SuperGroup/n(use invite link to invite)/n/n*Only moderators and owner can use block, ban, unban, newlink, link, setphoto, setname, lock, unlock, setrules, setabout and settings commands/n/n*Only owner can use res, setowner, promote, demote, and log commands"
end
end
end

return {
  description = "Chat With Robot Server", 
  usage = "chat with robot",
  patterns = {
   
    "^ابول$",
    "^مریم$",
    "^[/!#]help$"
    }, 
  run = run,

  pre_process = pre_process
}









