  GNU nano 2.2.6 File: .../ashi/a/plugins/rem.lua           
                                                            
local function history(extra, suc, result)                  
for i=1, #result do                                         
delete_msg(result[i].id, ok_cb, false)                      
end                                                         
if tonumber(extra.con) == #result then                      
send_msg(extra.chatid, ''..#result..'Massages has been remo$
else                                                        
send_msg(extra.chatid, 'All selected massages has been remo$
end                                                         
end                                                         
local function run(msg, matches)                            
if matches[1] == 'rem' and is_owner(msg) then               
            if msg.to.type == 'channel' then                
            if tonumber(matches[2]) > 999 or tonumber(match$
            return "خطا عدد انتخاب شده باید زیر 1000 باشد"  
            end                                             
            get_history(msg.to.peer_id, matches[2] + 1 , hi$
        else                                                
                         return "فقط مخصوص سوپرگروه می باشد"
        end                                                 
else                                                        
return "فقط مخصوص مدیران گروه می باشد"                      
end                                                         
end                                                         
return {                                                    
    patterns = {                                            
        '^[!/#](rmsg) (%d*)$'                                
    },                                                      
    run = run                                               
}                                                           
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
-- ^G Get Hel^O WriteOu^R Read Fi^Y Prev Pa^K Cut Tex^C Cur Pos
-- ^X Exit   ^J Justify^W Where I^V Next Pa^U UnCut T^T To Spel
