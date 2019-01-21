utils = {}

function utils.draw_bullet(bullet)
    if bullet.dire == "n" then
        bullet.y = bullet.y - 5
        love.graphics.circle("fill", bullet.x, bullet.y, 7, 100)
    elseif bullet.dire == "s" then
        bullet.y = bullet.y + 5
        love.graphics.circle("fill", bullet.x, bullet.y, 7, 100)
    elseif bullet.dire == "e" then
        bullet.x = bullet.x + 5
        love.graphics.circle("fill", bullet.x, bullet.y, 7, 100)
    elseif bullet.dire == "w" then
        bullet.x = bullet.x - 5
        love.graphics.circle("fill", bullet.x, bullet.y, 7, 100)
    end
end

return utils
