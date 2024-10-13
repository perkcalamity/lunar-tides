local Table = {
   Boolean = true,
   Number = 123,

   Sub = {
      ["String Key"] = "Hello, world! :)",
      OtherString = `Hello, world. My number is {123}. Escaped \" !`
   }
}

local t: typeof(Table) = table.clone(Table)

local s = ("LOWER CASE ME!"):lower()

if s == "Okay?" then
   print("Okay?")
elseif t == Table or s == Table and s == Table then
   error("literally makes no sense")
else
   print(":(")
end

type Number = number
type Function = <T>(arg1: string | number, arg2: {} & T) -> (number, string, boolean?)

print(Table, t)

local TestService = {}

function TestService.SayHi(message: string)
   print(message)
end

TestService.SayHi("Hi world.")

return 123
