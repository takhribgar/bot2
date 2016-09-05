local function run(msg)
if msg.text == "ابول" then
  return "با باباییم چیکار داری؟"
end
if msg.text == "مریم" then
  return "با مامانیم چیکار داری؟"
end
if msg.text == "/help" then
  return "#helplist:\n\n#bot off\n#bot on\n#setadmin\n#demoteadmin\n#promote\n#demote\n#ban\n#unban\n#banlist\n#block\n#warn\n#unwarn\n#rmsg\n#setname\n#setphoto\n#who\n#link\n#setrules\n#lock links\n#unlock links\n#lock strict\n#unlock strict\n#lock spam\n#unlock spam\n#lock flood\n#unlock flood\n#lock fwd\n#unlock fwd\n#lock emoji\n#unlock emoji\n#lock english\n#unlock english\n#lock sticker\n#unlock sticker\n#lock arabic\n#unlock arabic\n#setflood\n#mute photo\n#unmute photo\n#mute gifs\n#unmute gifs\n#mute video\n#unmute video\n#mute text\n#unmute text\n#lock sticker\n#unlock sticker\n#mute documents\n#unmute documents\n#lock tgservice\n#unlock tgservice\n#muteslist\n#settings\n#silentuser\n#silentlist\n#addword\n#rw\n#clearwords\n#bots\n#public yes\n#pudic no\n#id\n#admins\n#kickme\n#rules\n#time\n#music\n#write\n#All cmd / & !\n#other cmd @Myth_typer"
end
if msg.text == "!help" then
  return "#helplist:\n\n#bot off\n#bot on\n#setadmin\n#demoteadmin\n#promote\n#demote\n#ban\n#unban\n#banlist\n#block\n#warn\n#unwarn\n#rmsg\n#setname\n#setphoto\n#who\n#link\n#setrules\n#lock links\n#unlock links\n#lock strict\n#unlock strict\n#lock spam\n#unlock spam\n#lock flood\n#unlock flood\n#lock fwd\n#unlock fwd\n#lock emoji\n#unlock emoji\n#lock english\n#unlock english\n#lock sticker\n#unlock sticker\n#lock arabic\n#unlock arabic\n#setflood\n#mute photo\n#unmute photo\n#mute gifs\n#unmute gifs\n#mute video\n#unmute video\n#mute text\n#unmute text\n#lock sticker\n#unlock sticker\n#mute documents\n#unmute documents\n#lock tgservice\n#unlock tgservice\n#muteslist\n#settings\n#silentuser\n#silentlist\n#addword\n#rw\n#clearwords\n#bots\n#public yes\n#pudic no\n#id\n#admins\n#kickme\n#rules\n#time\n#music\n#write\n#All cmd / & !\n#other cmd @Myth_typer"
end
end


return {
  description = "Chat With Robot Server", 
  usage = "chat with robot",
  patterns = {
   
    "^ابول$",
    "^مریم$",
    "^/help$",
    "^!help$"
    }, 
  run = run,

  pre_process = pre_process
}









