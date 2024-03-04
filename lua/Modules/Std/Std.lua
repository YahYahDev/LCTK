

---@class std
Std = {


---
---@param input string
---@return string
    Cmd = function (input)

        local handle = io.popen(input, "r")

        local content = handle:read("*a")
        if content == nil then
            print("ERROR: "..input.."Returned nil")
        end
        handle:close()

        return content
    end

}


return Std
