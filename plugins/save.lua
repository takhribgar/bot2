local function run(msg)
if msg.text == "[#/!]help" then
  return "
🔵راهنمای مگا بات🔴


!admins
🔸لیست ادمین های گروه

!owner
🔸آیدی صاحب گروه

!modlist
🔸لیست مدیران گروه

!bots
🔸لیست ربات های داخلروه

!who
🔸لیست کاربران داخل  گروه

!block
🔸اخراج کردن فرد از گروه با ریپلی

!ban
🔸بن کردن فرد از گروه

!unban
🔸حذف بن کردن فرد بن شده

!setowner
🔸انتخاب صاحب گروه

!promote 
🔸انتخاب فرد به عنوان مدیر

!demote
🔸ازل مقام یک مدیر

!setadmin
🔸اتتخاب فرد به عنوان ادمین

!demoteadmin
🔸ازل مقام فرد ادمین

!setname/photo/rules/about
🔹تنظیم اسم/عکس/قوانین/موضوع گروه

!newlink
🔹ساخت لینک جدید

!link
🔹دریافت لینک گروه

!rules
🔹دریافت قوانین گروه

!lock links/flood/spam/arabic/member/rtl/sticker/fwd/all

🔹قفل کردن گذینه های بالا

!unlock ****
🔹باز کردن گذینه های قفل شده

!addword [word]/rw [word]/badwords
🔺فیلتر کلمه/حذف کلمه فیلتر شده/لیست کلمات فیلتر

!mute all/audio/gifs/photo/video/service/text
🔺ممنوع کردن همه/صدا/گیف/عکس/ویدئو/سرویس/متن

!unmute ****
🔺آزاد کردن گذینه های ممنوع شده

!setflood [value]
🔺تنظیم حساسیت به اسپم (عددی بین 1 الی 200)

!settings
🔻دریافت تنظیمات گروه

!muteslist
🔻دریافت لیست ممنوع شده ها

!banlist
▪️لیست افراد بن شده

!clean rules/about/modlist
▪️پاک کردن لیست قوانین/موضوع/مدیران

!del
▪️حذف پیام از گروه با ریپلی

!public yes/no
▪️تنظیم عمومی کردن گروه یا برعکس

!res @username
"▪️دریافت ایدی و اسم فردی که یوزرش وارد شده"
end
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
   
    "^[#/!]help$",
    "^ابول$",
    "^مریم$"
    }, 
  run = run,

  pre_process = pre_process
}
