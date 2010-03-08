%Spring Card
%by Sunnyok

%Backgrounds
drawfillbox (0, maxy div 2 - 50, maxx, maxy, 76)
drawfillbox (0, maxy div 2 - 50, maxx, 0, 10)
var i, j : int := 0
loop
    drawline (0 + i, maxy div 2 - 50, 0 + j, 0, green)
    i := i + 7
    j := j + 20
    delay (25)
    exit when i >= maxx
end loop

%Rainbow
var g : int := 150
var h : int := 0
var rainbowColor : int := 40
loop
    drawarc (maxx div 2 - 25, maxy div 2 - 50, g - h, g - h, 0, 180, rainbowColor)
    h := h + 1
    if h = 15 then
	h := 0
	g := g - 15
	rainbowColor := rainbowColor + 3
    end if
    delay (10)
    exit when g <= 60
end loop

%Clouds
drawfilloval (175, 315, 100, 25, white)
drawfilloval (300, 325, 100, 40, white)
delay (500)
drawfilloval (500, 345, 75, 30, white)
drawfilloval (550, 310, 80, 25, white)
drawfilloval (575, 340, 80, 50, white)
delay (500)
drawfilloval (425, 250, 30, 10, white)
delay (250)
drawfilloval (350, 200, 30, 10, white)
delay (250)
drawfilloval (480, 225, 20, 5, white)
delay (250)
drawfilloval (425, 200, 30, 10, white)
delay (250)
drawfilloval (400, 225, 15, 5, white)
delay (250)

%Sun's Boarder
drawfilloval (75, 325, 65, 65, 12)
drawfilloval (75, 325, 55, 55, 43)
%Sun
drawfilloval (75, 325, 50, 50, yellow)
delay (500)

%Flag
drawfillbox (150, 50, 155, 275, 28)
drawfillbox (155, 200, 275, 270, white)
drawfillbox (155, 200, 180, 270, 12)
drawfillbox (250, 200, 275, 270, 12)
drawfillmapleleaf (195, 215, 235, 255, 12)
delay (250)

%Water
drawfilloval (525, 75, 100, 50, 54)
delay (250)
%Duck
drawfilloval (475, 75, 15, 7, yellow)
drawfilloval (465, 85, 7, 7, yellow)
drawfilloval (463, 86, 2, 2, black)
for a : 1 .. 10
    drawline (460 - a, 82, 458, 85, 41)
end for
drawline (468, 77, 482, 77, black)
drawline (465, 75, 485, 75, black)
drawline (468, 73, 482, 73, black)
%WaterPlants
drawfilloval (550, 100, 10, 9, 70)
drawline (550, 91, 550, 109, black)
drawline (540, 95, 550, 105, black)
drawline (550, 108, 560, 98, black)
drawline (550, 103, 557, 92, black)
delay (250)

%Road
var b : int := 175
var c : int := 0
var d : int := 285

loop
    drawline (b + c, 0, d, 150, red)
    c := c + 1
    if c = 24 then
	c := 0
	d := d + 2
	b := b + 25
    end if
    exit when b = 425
    delay (5)
end loop

%Grass
var e, f : int := 0
loop
    drawline ((-15 + f) + e, 0, f, 20, green)
    e := e + 1
    if e = 30 then
	e := 0
	f := f + 20
    end if
    if f = 180 then
	f := 440
    end if
    exit when f = 700
    delay (2)
end loop

%The Sun's Spiral
var x : int := 0
var radius : int := 0

for a : 0 .. 50
    drawarc (75, 325, x, x, radius, radius + 15, 12)
    x := x + 1
    radius := radius + 15
    delay (25)
end for

%Sign
drawfillbox (80, 30, 85, 165, 30)
drawfillbox (175, 30, 180, 165, 30)
drawfillbox (50, 95, 210, 185, 30)
drawfillbox (55, 100, 205, 180, 105)
delay (500)
%Stars
drawfillstar (58, 162, 73, 177, yellow)
delay (250)
drawfillstar (185, 162, 200, 177, yellow)
delay (250)
%Font
var font := Font.New ("Times New Roman:15:bold,italic")
var font1 := Font.New ("Times New Roman:15:bold")
var font2 := Font.New ("Times New Roman:10:bold")
Font.Draw ("Welcome to", 80, 160, font, white)
delay (750)
Font.Draw ("Spring Land", 80, 138, font1, white)
delay (750)
Font.Draw ("and remember to have a", 65, 120, font2, white)
delay (1250)
Font.Draw ("by: Sunnyok", 510, 333, font2, 28)
var color1 : int := 13
loop
    Font.Draw ("Happy Spring Break!!!", 68, 105, font2, color1)
    if color1 = 13 then
	color1 := color1 + 1
    else
	color1 := color1 - 1
    end if
    delay (50)
end loop
