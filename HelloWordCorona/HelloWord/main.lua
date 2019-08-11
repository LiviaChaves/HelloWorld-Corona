
    --Obs: Todas as imagens foram retiradas dos sites https://kenney.nl/  e https://opengameart.org/popular

--variaveis
local background
local alien

-- adicionando a imagem de plano de fundo
local background = display.newImageRect( "background.png", 1024, 1024 )
-- centralizando
background.x = display.contentCenterX
background.y = display.contentCenterY
 --- add plataforma
local forma = display.newImageRect( "forma.png", 300,75 )
forma.x = display.contentCenterX
forma.y = display.contentHeight-2
 
--add o alien
local alien = display.newImageRect("alien.PNG", 66,92)
alien.x= display.contentCenterX
alien.y= display.contentCenterY
alien.name = "alien"



--add fisica
 
local physics = require( "physics" )
physics.start()
physics.addBody( forma, "static" )
physics.addBody( alien, "dynamic")

--função pulo
local function pushAlien()
    alien:applyLinearImpulse( 0, -0.5, alien.x, alien.y )
end
 
alien:addEventListener( "tap", pushAlien)

-- moveAlien
function moveAlien(a)
    if(a.phase == 'began') then -- indica que um toque ao objeto
        lastX = a.x - alien.x
    elseif(a.phase == 'moved') then --indica que uma posição de toque indicando o movimento do.
        alien.x = a.x - lastX
    end
end
alien:addEventListener('touch', moveAlien)
    
 





    









  



