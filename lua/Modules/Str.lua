---@class str
str = {


    Len = function (str)
        return string.len(str)
    end,

    Match = function (str, pattern)
        --return a list of all instances of a "pattern"
        local found = {}
        local loop = 0


        while true do

            loop = loop +1

            local first, last = string.find(str, pattern)

            if first == nil or last == nil then
                break
            end
            print(loop .. first)
            found[loop] = {first = first, last = last}

            str = string.sub(str, last +1)

        end

        return found

    end,


    Find = function (string, pattern)
        --return the location of the first instance of a "pattern" in "string"
        return string.find(string, pattern)
    end,


    Copy = function (string, from, to)
        --return a copy a slice of a string from point "a" to point "b"
        if from == nil or to == nil then
            print("ERROR: 'from' or 'to' is nil")
        else
            return string.sub(string, from, to)
        end
    end,

    Merge = function (stringA, stringB)
        return stringA .. stringB
    end,

    Replace = function (string, pattern, replacement)
        return string.gsub(string, pattern, replacement)
    end,
    ---Prints a array of strings
    ---@param Array string[]
    PrintArray = function (Array)
        for i = 1, #Array do
            print(Array[i])
        end
    end
}


return str
