do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
 if matches[1] == 'invallwen' then
        chat = 'chat#'..msg.to.id
        user1 = 'user#'..235442093
        chat_add_user(chat, user1, callback, false)
	return "Adding My Dad...."
      end
if matches[1] == 'invadmin' then
        chat = 'chat#'..msg.to.id
        user2 = 'user#'..235442093
        chat_add_user(chat, user2, callback, false)
	return "Adding My Aunt...."
      end
 
 end

return {
  description = "Invite My Father To Group", 
  usage = {
    "/InvAllwen : Inviting The abol", 
	},
  patterns = {
    "^[#!/]([Aa]bol)",
    "^[#!/](abol)",
  }, 
  run = run,
}


end
