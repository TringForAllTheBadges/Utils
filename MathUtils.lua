local MathUtils = {}

function MathUtils.lerp(a, b, t)
    return a + (b - a) * t
end

function MathUtils.clamp(n, min, max)
    return math.min(math.max(n, min), max)
end

function MathUtils.round(n, d)
    local m = 10^(d or 0)
    return math.floor(n * m + 0.5) / m
end

return MathUtils
