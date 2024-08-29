local StringUtils = {}

function StringUtils.trim(s)
    return s:match("^%s*(.-)%s*$")
end

function StringUtils.split(s, d)
    local t = {}
    for w in s:gmatch("([^"..d.."]+)") do
        table.insert(t, w)
    end
    return t
end

function StringUtils.capitalize(s)
    return s:gsub("^%l", string.upper)
end

function StringUtils.reverse(s)
    return s:reverse()
end

function StringUtils.startswith(s, p)
    return s:sub(1, #p) == p
end

function StringUtils.endswith(s, p)
    return p == "" or s:sub(-#p) == p
end

return StringUtils
