-- <- So wird eine Zeile auskommentiert (d.h. der Code/Text danach wird bei "Run" ignoriert.)
--[[ Will man über mehrere Zeilen auskommentieren, so verwendet man
     zusätzlich eckige Klammern.
]]--

-- Dies ist eine Methode, die dauerhaft aufgerufen wird - ca. 60 mal pro Sekunde.
function love.draw()
    love.graphics.setBackgroundColor(199/255,21/255,133/255)    --Farbewerte sind Anteile von 255. Entspricht also rgb(100,0,0)
    love.graphics.setColor(1,0,1)
    love.graphics.rectangle("fill",200,400,150,25)    --Ein Rechteck, dessen linke obere Ecke bei den Koordinaten (400|100) ist. Es ist 75x25 Pixel groß.
    love.graphics.setColor(0,1,0)
    love.graphics.circle("line",200,400,50)                  --Ein Kreis, dessen Mittelpunkt bei den Koordinaten (0|0) ist. Er hat einen Radius von 50Pixel

    --Raster zur Orientierung
    drawGrid(100, 700, 100, 100, 500, 100, 0.2)

end

--author: Viktor Kulik
function drawGrid(minv, maxv, spacev, minh, maxh, spaceh, a)
    --hey my teacher likes this :)
    love.graphics.setColor(1, 1, 1, a)
    -- horizontal lines (every 100 Pixels)
    for y = minh, maxh, spaceh do
        love.graphics.line(0, y, 800, y)
    end
    -- vertical lines (every 100 Pixels)
    for x = minv, maxv, spacev do
        love.graphics.line(x, 0, x, 600)
    end
    love.graphics.setColor(1, 1, 1)
end