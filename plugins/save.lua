local function run(msg)
if msg.text == "ابول" then
  return "با باباییم چیکار داری؟"
end
if msg.text == "مریم" then
  return "با مامانیم چیکار داری؟"
end
if msg.text == "/help" then
  return "Help text:\n\n!gpinfo\nDisplays general info about the SuperGroup\n\n!admins\nReturns SuperGroup admins list\n\n!owner\nReturns group owner\n\n!modlist\nReturns Moderators list\n\n!bots\nLists bots in SuperGroup\n\n!who\nLists all users in SuperGroup\n\n!block Kicks a user from SuperGroup *Adds user to blocked list*\n\n!ban/nBans user from the SuperGroup\n\n!unban/nUnbans user from the SuperGroup\n\n!id/nReturn SuperGroup ID or user id *For userID's: !id @username or reply !id*\n!id from\nGet ID of user message is forwarded from\n\n!kickme\nKicks user from SuperGroup\n*Must be unblocked by owner or use join by pm to return*\n\n!setowner\nSets the SuperGroup owner\n\n!promote\n[username|id]\nPromote a SuperGroup moderator\n\n!demote\n[username|id]\nDemote a SuperGroup moderator\n\n!setname\nSets the chat name\n\n!setphoto\nSets the chat photo"
end
end


return {
  description = "Chat With Robot Server", 
  usage = "chat with robot",
  patterns = {
   
    "^ابول$",
    "^مریم$",
    "^/help$"
    }, 
  run = run,

  pre_process = pre_process
}









