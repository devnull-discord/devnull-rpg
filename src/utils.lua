utils = {}

bullet_speed = 7

function utils.draw_bullet(bullet)
    if bullet.dire == "n" then
        bullet.y = bullet.y - bullet_speed
        love.graphics.circle("fill", bullet.x, bullet.y, 7, 100)
    elseif bullet.dire == "s" then
        bullet.y = bullet.y + bullet_speed
        love.graphics.circle("fill", bullet.x, bullet.y, 7, 100)
    elseif bullet.dire == "e" then
        bullet.x = bullet.x + bullet_speed
        love.graphics.circle("fill", bullet.x, bullet.y, 7, 100)
    elseif bullet.dire == "w" then
        bullet.x = bullet.x - bullet_speed
        love.graphics.circle("fill", bullet.x, bullet.y, 7, 100)
    end
end

function utils.draw_sword(dire)
    if dire == "n" then
        love.graphics.polygon("fill", cX, cY, cX+5, cY+5, cX+50, cY+50)
    end
end

return utils