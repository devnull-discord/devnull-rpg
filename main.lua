-- DEPENDANCIES
utils = require( "src/utils" )
kutils = require( "src/keyboard" )

-- GLOBAL VARS
cX = 300
cY = 300

bX = cX
bY = cY

facing = "n"

bullets = {}

speed = 2
sprspeed = 5

fireCounter = 0
everyFire = 0.2

 -- MAIN CHUNK
function love.load()
    world = love.physics.newWorld(20, 20, true)
end

function love.update(deltatime)
    kutils.check_keys() -- check for key events

    if love.mouse.isDown(1) then
        fireCounter = fireCounter+deltatime
        if fireCounter >= everyFire then
            table.insert(bullets, {dire=facing, x=cX, y=cY})
            fireCounter = fireCounter - everyFire
        end
    end
end

function love.draw(dt)
    love.graphics.setBackgroundColor( 255, 255, 255 )

    love.graphics.setColor(255, 0, 0)
    sprite = love.graphics.circle("fill", cX, cY, 20, 100)

    if love.mouse.isDown(2) then
        love.graphics.setColor(0, 0, 255)
        utils.draw_sword(facing)
    end

    for i=1, #bullets, 1 do
        local bullet = bullets[i]
        love.graphics.setColor(0, 0, 0)
        utils.draw_bullet(bullet)
    end

    sprite = love.physics.newBody(world, 10, 10, "dynamic")
end