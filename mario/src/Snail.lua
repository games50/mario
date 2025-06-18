--[[
    CS50 2D
    Super Mario Bros. Remake

    -- Snail Class --

    Author: Colton Ogden
    cogden@cs50.harvard.edu
]]

Snail = Class{__includes = Entity}

function Snail:init(def)
    Entity.init(self, def)
end

function Snail:render()
    love.graphics.draw(gTextures[self.texture], gFrames[self.texture][self.currentAnimation:getCurrentFrame()],
        math.floor(self.x) + self.width / 2,
        math.floor(self.y) + self.height / 2,
        0, self.direction == 'left' and 1 or -1, 1,
        self.width / 2, self.height / 2)
end