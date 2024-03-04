struct = {

    new = function ()

    local new = function (parent)
            local child = {}

            setmetatable(child, {__index = parent})
            return child
        end

        return new
    end
}

return struct
