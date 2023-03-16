-- FDL parser library for Lua
-- florencio (c) 2023

function open_fdl(file_path)
    file = assert(io.open(file_path, "r"))
    return file
end

function close_fdl(file)
    file:close()
end

function fetch_fdl(file, group, sub_group)
    fetch = false
    for x in file:lines() do
        if string.find(x, "%["..group) then
            fetch = true
        end
        
        if string.find(x, "%[%/") then
            fetch = false
        end

        if fetch == true and string.find(x, sub_group.."=") then
            length = string.len(sub_group.."=")
            return string.sub(x, length+1, -1)
            
        end
    end
end