--  GNU nano 2.2.6 File: ...i/a/plugins/addplug.lua Modified  
                                                            
local function run(msg, matches)                            
  if is_sudo(msg) then                                      
  local text = matches[1]                                   
  local b = 1                                               
  while b ~= 0 do                                           
    text = text:trim()                                      
    text,b = text:gsub('^!+','')                            
  end                                                       
  local name = matches[2]                                   
  local file = io.open("./plugins/"..name..".lua", "w")     
  file:write(text)                                          
  file:flush()                                              
  file:close()                                              
  return "Done ;-)"                                         
end                                                         
end                                                         
return {                                                    
  description = "a Usefull plugin for sudo !",              
  usage = "A plugins to add Another plugins to the server", 
  patterns = {                                              
    "^[!/#]([Aa]ddplug) +(.+) (.*)$"                        
  },                                                        
  run = run                                                 
}                                                           
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
                                                            
-- ^G Get Hel^O WriteOu^R Read Fi^Y Prev Pa^K Cut Tex^C Cur Pos
-- ^X Exit   ^J Justify^W Where I^V Next Pa^U UnCut T^T To Spel
