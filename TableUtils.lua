local TableUtils = {}

function TableUtils.merge(t1, t2)
    for k, v in pairs(t2) do
        t1[k] = v
    end
    return t1
end

function TableUtils.find(t, v)
    for i, val in ipairs(t) do
        if val == v then
            return i
        end
    end
    return nil
end

function TableUtils.map(t, f)
    local nt = {}
    for i, v in ipairs(t) do
        nt[i] = f(v)
    end
    return nt
end

function TableUtils.filter(t, f)
    local nt = {}
    for _, v in ipairs(t) do
        if f(v) then
            table.insert(nt, v)
        end
    end
    return nt
end

function TableUtils.reduce(t, f, init)
    local acc = init
    for _, v in ipairs(t) do
        acc = f(acc, v)
    end
    return acc
end

return TableUtils
