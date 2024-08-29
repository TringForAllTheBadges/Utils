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

function MathUtils.map(v, a1, a2, b1, b2)
    return b1 + (v - a1) * (b2 - b1) / (a2 - a1)
end

function MathUtils.dist(x1, y1, x2, y2)
    return math.sqrt((x2 - x1)^2 + (y2 - y1)^2)
end

function MathUtils.angleto(x1, y1, x2, y2)
    return math.atan2(y2 - y1, x2 - x1)
end

return MathUtils
