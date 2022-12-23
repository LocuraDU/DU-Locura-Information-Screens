-- ↓ START EDITABLE OPTIONS ↓ --
local vmode=true -- Change it to rotate the screen 90deg (bottom on right)
local vmode_side="left" -- Set to left for bottom on left side or to right for bottom on right
local line_bottom_margin=-11.5 -- Set the size, in pixel of the bottom margin of each row
local title='LOCURA ATMO ENGINE L INFO' -- Header Title
local version=1.0 -- Script Version
local footerNote='G I T H U B  /  L O C U R A D U' -- Footer Subtext
-- TALENT POINTS --
local AELH=0 -- Atmospheric Element Handling [+2% Thrust]
local AETC=0 -- Atmospheric Engine Thrust Control [+5% Thrust]
local AENH=0 -- Atmospheric Engine Handling [+10% Thrust]
local AEFE=0 -- Atmospheric Engine Fuel Efficiency [-5% Fuel Consumption]
local AEWO=0 -- Atmospheric Engine Warmup Optimization [-10% Warmup Time]
local AEAE=0 -- Atmospheric Engine Altitude Efficiency [-5% Atmo Effect]
-- ADVANCED TALENTS --
local APEHPH=0 -- Advanced Piloting Element HP Handling [+2% Healthpoints]
local APEIE=0 -- Advanced Piloting Element Industry Efficiency [-2% Crafting Time]
local AEHPH=0 -- Advanced Element HP Handling [+1% Healthpoints]
-- ↑ END EDITABLE OPTIONS ↑ --

-- DONT EDIT BELOW THIS LINE --

-- Information / Updates / Downloads: GitHub/LocuraDU 
-- Script Credits: GitHub/CredenceHamby & GitHub/Jericho1060
-- Built using the wonderful tools at https://du-lua.dev/
-- Love With Your Heart, Use Your Head For Everything Else - Captain Disillusion

local rx,ry
if vmode then
  ry,rx = getResolution()
else
  rx,ry = getResolution()
end

local smallBold=loadFont('Play-Bold',18)
local small=loadFont('Play',14)
local smallCon=loadFont('Play',18)
local subtext=loadFont('Play',8)

local red = {177/255,42/255,42/255}
local yellow = {249/255,212/255,123/255}
local green = {34/255,177/255,76/255}
local text = {110/255,166/255,181/255}
local space = {10,125,155,240,290,355,415,460,505,560}

local AENH = math.floor(AENH*10)

local back=createLayer()
setDefaultStrokeColor(back,Shape_Line,0,0,0,0.5)
setDefaultShadow(back,Shape_Line,6,0,0,0,0.5)
local front=createLayer()
setDefaultFillColor(front,Shape_Box,0.075,0.125,0.156,1)
setDefaultFillColor(front,Shape_Text,0.710,0.878,0.941,1)
setDefaultTextAlign(front,AlignH_Left,AlignV_Middle)
local storageBar=createLayer()
setDefaultFillColor(storageBar,Shape_Text,text[1],text[2],text[3],1)
setDefaultFillColor(storageBar,Shape_Box,0.075,0.125,0.156,1)
setDefaultFillColor(storageBar,Shape_Line,1,1,1,1)
setDefaultTextAlign(storageBar,AlignH_Left,AlignV_Middle)
local colorLayer=createLayer()
setDefaultFillColor(colorLayer,Shape_Text,text[1],text[2],text[3],1)
setDefaultTextAlign(colorLayer,AlignH_Left,AlignV_Middle)

setBackgroundColor(15/255,24/255,29/255)

if vmode then
    local r=90
    local tx=ry
    local ty=0
    if vmode_side=="left" then
        r=r+180
        tx=0
        ty=rx
    end
    setLayerTranslation(back,tx,ty)
    setLayerRotation(back,math.rad(r))
    setLayerTranslation(front,tx,ty)
    setLayerRotation(front,math.rad(r))
    setLayerTranslation(storageBar,tx,ty)
    setLayerRotation(storageBar,math.rad(r))
    setLayerTranslation(colorLayer,tx,ty)
    setLayerRotation(colorLayer,math.rad(r))
end

function renderHeader(title)
    local h_factor=12
    local h=35
    addLine(back,0,h+12,rx,h+12)
    addBox(front,0,12,rx,h)
    addText(front,smallBold,title,10,30)
    setNextTextAlign(front,AlignH_Right,AlignV_Baseline)
    addText(front,small," v"..version,rx-10,35)
end

function renderFooter(footerNote)
    local h_factor=12
    local h=35
    addLine(back,0,ry-h+h_factor,rx,ry-h+h_factor)
    addBox(front,0,ry-h-h_factor,rx,h)setNextFillColor(front,0.24,0.25,0.25,1)
    addText(front,subtext,footerNote,rx-120,ry-30)
end

local y = 50

function renderTitle(title)
    local h=20
    addLine(back,0,y+h,rx,y+h)
    addBox(front,0,y,rx,h)
    addText(front,small,title,space[1],y+h/2)    
    addText(front,small,'THRUST',space[3],y+h/2)
    addText(front,small,'WRM',space[4],y+h/2)
    addText(front,small,'FUEL',space[5],y+h/2)
    addText(front,small,'HIT',space[6],y+h/2)
    addText(front,small,'A/E',space[7],y+h/2)
    addText(front,small,'K/T',space[8],y+h/2)
    addText(front,small,'VOL',space[9],y+h/2)
    addText(front,small,'MASS',space[10],y+h/2)
    y=y+h
end

function renderTitle2(title)
    local h=20
    y=y+10
    addLine(back,0,y+h,rx,y+h)
    addBox(front,0,y,rx,h)
    addText(front,small,title,space[1],y+h/2)    
    addText(front,small,'THRUST',space[3],y+h/2)
    addText(front,small,'WRM',space[4],y+h/2)
    addText(front,small,'FUEL',space[5],y+h/2)
    addText(front,small,'HIT',space[6],y+h/2)
    addText(front,small,'A/E',space[7],y+h/2)
    addText(front,small,'K/T',space[8],y+h/2)
    addText(front,small,'VOL',space[9],y+h/2)
    addText(front,small,'MASS',space[10],y+h/2)
    y=y+h
end

function renderTitle3(title)
    local h=20
    y=y+10
    addLine(back,0,y+h,rx,y+h)
    addBox(front,0,y,rx,h)
    addText(front,small,title,space[1],y+h/2) 
    addText(front,small,'CRAFTING TIMES',space[3],y+h/2)
    addText(front,small,'SCHEMATIC',space[6],y+h/2)
    y=y+h
end

function renderRow(titleText,tier,thrust,warmup,fuel,hitpoints,antele,kinthm,volume,mass,thrustC,warmupC,fuelC,hitpointsC,anteleC,kinthmC,volumeC,massC)    local h=35
    addText(storageBar,smallCon,titleText,space[1],y+h/2)  
    addText(storageBar,smallCon,tier,space[2],y+h/2)
    setNextFillColor(colorLayer,thrustC[1],thrustC[2],thrustC[3],1)
    addText(colorLayer,smallCon,thrust,space[3],y+h/2)    
    setNextFillColor(colorLayer,warmupC[1],warmupC[2],warmupC[3],1)
    addText(colorLayer,smallCon,warmup,space[4],y+h/2)    
    setNextFillColor(colorLayer,fuelC[1],fuelC[2],fuelC[3],1)
    addText(colorLayer,smallCon,fuel,space[5],y+h/2)    
    setNextFillColor(colorLayer,hitpointsC[1],hitpointsC[2],hitpointsC[3],1)
    addText(colorLayer,smallCon,hitpoints,space[6],y+h/2) 
    setNextFillColor(colorLayer,anteleC[1],anteleC[2],anteleC[3],1)
    addText(colorLayer,smallCon,antele,space[7],y+h/2) 
    setNextFillColor(colorLayer,kinthmC[1],kinthmC[2],kinthmC[3],1)
    addText(colorLayer,smallCon,kinthm,space[8],y+h/2)
    setNextFillColor(colorLayer,volumeC[1],volumeC[2],volumeC[3],1)
    addText(colorLayer,smallCon,volume,space[9],y+h/2)
    setNextFillColor(colorLayer,massC[1],massC[2],massC[3],1)
    addText(colorLayer,smallCon,mass,space[10],y+h/2)
    y=y+h+line_bottom_margin
end

function renderRow2(titleText,time,schem,timeC,schemC)    
   local h=35
    addText(storageBar,smallCon,titleText,space[1],y+h/2)  
    setNextFillColor(colorLayer,timeC[1],timeC[2],timeC[3],1)
    addText(colorLayer,smallCon,time,space[3],y+h/2)    
    setNextFillColor(colorLayer,schemC[1],schemC[2],schemC[3],1)
    addText(colorLayer,smallCon,schem,space[6],y+h/2)    
    y=y+h+line_bottom_margin
end

renderHeader(title)
renderFooter(footerNote)


renderTitle('BASIC')
renderRow("BASIC","T1","2160000","8","3981","3988",".40",".30","3355","17",yellow,yellow,yellow,text,yellow,yellow,text,red)
renderTitle2('MILITARY')
renderRow("UNCOMMON","T2","2592000","8","5733","9388",".50",".38","3355","17",yellow,yellow,red,text,green,green,text,red)
renderRow("ADVANCED","T3","3110400","8","8256","9388",".60",".45","3355","17",green,yellow,red,text,green,green,text,red)
renderRow("RARE","T4","3732480","8","11888","9388",".70",".53","3355","17",green,yellow,red,text,green,green,text,red)
renderRow("EXOTIC","T5","4478976","8","17124","9388",".80",".60","3355","17",green,yellow,red,text,green,green,text,red)
renderTitle2('MANEUVER')
renderRow("UNCOMMON","T2","2160000","4","2986","9388",".30",".23","3355","17",yellow,green,green,text,red,red,text,red)
renderRow("ADVANCED","T3","2160000","2","2239","9388",".20",".15","3355","17",yellow,green,green,text,red,red,text,red)
renderRow("RARE","T4","2160000","1","1680","9388",".10",".07","3355","17",yellow,green,green,text,red,red,text,red)
renderRow("EXOTIC","T5","2160000","0","1260","9388",".00",".00","3355","17",yellow,green,green,text,red,red,text,red)
renderTitle2('FREIGHT')
renderRow("UNCOMMON","T2","2160000","12","2986","9388",".40",".30","3355","11.90",yellow,red,green,text,yellow,yellow,text,yellow)
renderRow("ADVANCED","T3","2160000","18","2239","9388",".40",".30","3355","8.33",yellow,red,green,text,yellow,yellow,text,green)
renderRow("RARE","T4","2160000","27","1680","9388",".40",".30","3355","5.83",yellow,red,green,text,yellow,yellow,text,green)
renderRow("EXOTIC","T5","2160000","40","1260","9388",".40",".30","3355","4.08",yellow,red,green,text,yellow,yellow,text,green)
renderTitle2('SAFE')
renderRow("UNCOMMON","T2","2052000","4","3782","9388",".50",".38","3355","17",yellow,green,yellow,text,green,green,text,red)
renderRow("ADVANCED","T3","1949400","2","3593","9388",".60",".45","3355","17",red,green,yellow,text,green,green,text,red)
renderRow("RARE","T4","1851930","1","3413","9388",".70",".53","3355","17",red,green,yellow,text,green,green,text,red)
renderRow("EXOTIC","T5","1759333","0","3243","9388",".80",".60","3355","17",red,green,yellow,text,green,green,text,red)
renderTitle3('OTHER INFO')
renderRow2("BASIC","2 Hours 8 Minutes","Tier 1 L Element",text,text)
renderRow2("UNCOMMON","6 Hours 24 Minutes","Tier 2 L Element",text,text)
renderRow2("ADVANCED","19 Hours 12 Minutes","Tier 3 L Element",text,text)
renderRow2("RARE","2 Days 10 Hours","Tier 4 L Element",text,text)
renderRow2("EXOTIC","7 Days 5 Hours","Tier 5 L Element",text,text)
