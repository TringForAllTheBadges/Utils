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

return StringUtils
