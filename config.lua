-- ↓ START EDITABLE OPTIONS ↓ --
local vmode = true -- Change it to rotate the screen 90deg (bottom on right)
local vmode_side = "left" -- Set to left for bottom on left side or to right for bottom on right
local line_bottom_margin = -11.5 -- Set the size, in pixel of the bottom margin of each row
local title='LOCURA HONEYCOMB INFO' -- Header Title
local version=1.0 -- Script Version
local footerNote='G I T H U B  /  L O C U R A D U' -- Footer Subtext
local show_pure=true
local show_product=true
-- ↑ END EDITABLE OPTIONS ↑ --

-- DONT EDIT BELOW THIS LINE --

-- DU-Honeycomb-Info
-- Visit GitHub/LocuraDU For Information / Updates / Downloads 
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

local back=createLayer()
setDefaultStrokeColor(back,Shape_Line,0,0,0,0.5)
setDefaultShadow(back,Shape_Line,6,0,0,0,0.5)
local front=createLayer()
setDefaultFillColor(front,Shape_Box,0.075,0.125,0.156,1)
setDefaultFillColor(front,Shape_Text,0.710,0.878,0.941,1)
setDefaultTextAlign(front,AlignH_Center,AlignV_Middle)
local storageBar=createLayer()
setDefaultFillColor(storageBar,Shape_Text,text[1],text[2],text[3],1)
setDefaultFillColor(storageBar,Shape_Box,0.075,0.125,0.156,1)
setDefaultFillColor(storageBar,Shape_Line,1,1,1,1)
setDefaultTextAlign(storageBar,AlignH_Left,AlignV_Middle)
local colorLayer=createLayer()
setDefaultFillColor(colorLayer,Shape_Text,text[1],text[2],text[3],1)
setDefaultTextAlign(colorLayer,AlignH_Right,AlignV_Middle)

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
    addText(front,smallBold,title,140,30)
    setNextTextAlign(front,AlignH_Right,AlignV_Baseline)
    addText(front,small," v"..version,rx-10,35)
end

function renderFooter(footerNote)
    local h_factor=12
    local h=35
    addLine(back,0,ry-h+h_factor,rx,ry-h+h_factor)
    addBox(front,0,ry-h-h_factor,rx,h)setNextFillColor(front,0.24,0.25,0.25,1)
    addText(front,subtext,footerNote,rx-60,ry-30)
end

local y = 50

function renderTitle(title)
    local h=20
    addLine(back,0,y+h,rx,y+h)
    addBox(front,0,y,rx,h)
    addText(front,small,title,rx-570,y+h/2)    
    addText(front,small,'VARIATIONS',rx-395,y+h/2)
    addText(front,small,'HITPOINTS',rx-290,y+h/2)
    addText(front,small,'MASS',rx-200,y+h/2)
    addText(front,small,'SCHEMATIC',rx-130,y+h/2)
    addText(front,small,'NANO',rx-50,y+h/2)
    y=y+h
end

function renderTitle2(title)
    local h=20
    y=y+10
    addLine(back,0,y+h,rx,y+h)
    addBox(front,0,y,rx,h)
    addText(front,small,title,rx-570,y+h/2)
    addText(front,small,'VARIATIONS',rx-395,y+h/2)
    addText(front,small,'HITPOINTS',rx-290,y+h/2)
    addText(front,small,'MASS',rx-200,y+h/2)
    addText(front,small,'SCHEMATIC',rx-130,y+h/2)
    addText(front,small,'NANO',rx-50,y+h/2)
    y=y+h
end

function renderRow(titleText,tier,variations,hitpoints,mass,schem,nano,varColor,hitColor,massColor,schemColor,nanoColor)
    local h=35
    addText(storageBar,smallCon,titleText,25,y+h/2)  
    addText(storageBar,smallCon,tier,160,y+h/2)
    setNextFillColor(colorLayer,varColor[1],varColor[2],varColor[3],1)
    addText(colorLayer,smallCon,variations,rx-385,y+h/2)    
    setNextFillColor(colorLayer,hitColor[1],hitColor[2],hitColor[3],1)
    addText(colorLayer,smallCon,hitpoints,rx-275,y+h/2)    
    setNextFillColor(colorLayer,massColor[1],massColor[2],massColor[3],1)
    addText(colorLayer,smallCon,mass,rx-190,y+h/2)    
    setNextFillColor(colorLayer,schemColor[1],schemColor[2],schemColor[3],1)
    addText(colorLayer,smallCon,schem,rx-120,y+h/2) 
    setNextFillColor(colorLayer,nanoColor[1],nanoColor[2],nanoColor[3],1)
    addText(colorLayer,smallCon,nano,rx-20,y+h/2) 
    y=y+h+line_bottom_margin
end

renderHeader(title)
renderFooter(footerNote)

if show_pure then
renderTitle('PURE')
renderRow("Aluminium","T1","44","2250","50","NO","PARTIAL",green,yellow,yellow,green,yellow)
renderRow("Calcium","T2","29","2250","50","YES","NO",yellow,yellow,yellow,red,red)   
renderRow("Carbon","T1","29","1125","25","NO","PARTIAL",yellow,red,green,green,yellow)
renderRow("Chromium","T2","44","3375","75","YES","NO",green,yellow,yellow,red,red)
renderRow("Cobalt","T4","29","3375","75","YES","NO",yellow,yellow,yellow,red,red)
renderRow("Copper","T2","44","4500","100","YES","NO",green,green,red,red,red)
renderRow("Flourine","T4","29","1125","25","YES","NO",yellow,red,green,red,red)
renderRow("Gold","T4","44","4500","100","YES","NO",green,green,red,red,red)
renderRow("Iron","T1","44","4500","100","NO","PARTIAL",green,green,red,green,yellow)
renderRow("Lithium","T3","29","1125","25","YES","NO",yellow,red,green,red,red)
renderRow("Manganese","T5","29","3375","75","YES","NO",yellow,yellow,yellow,red,red)
renderRow("Nickle","T3","29","3375","75","YES","NO",yellow,yellow,yellow,red,red)
renderRow("Niobium","T5","29","4500","100","YES","NO",yellow,green,red,red,red)
renderRow("Scandium","T4","29","2250","50","YES","NO",yellow,yellow,yellow,red,red)
renderRow("Silicon","T1","29","3375","75","NO","PARTIAL",yellow,yellow,yellow,green,yellow)
renderRow("Silver","T3","29","4500","100","YES","NO",yellow,green,red,red,red)
renderRow("Sodium","T2","29","1125","25","YES","NO",yellow,red,green,red,red)
renderRow("Sulfer","T3","29","2250","50","YES","NO",yellow,yellow,yellow,red,red)
renderRow("Titanium","T5","44","1125","25","YES","NO",green,red,green,red,red)
renderRow("Vanadium","T5","29","2250","50","YES","NO",yellow,yellow,yellow,red,red)
end
if show_product then
renderTitle2('PRODUCT')
renderRow("AL-LI","T3","29","1800","40","YES","NO",yellow,yellow,yellow,red,red)
renderRow("Brick","T1","51","360","8","YES","PARTIAL",green,red,green,red,yellow)
renderRow("Carbon Fiber","T1","15","180","4","YES","PARTIAL",red,red,green,red,yellow)
renderRow("Concrete","T1","15","540","12","YES","NO",red,red,green,red,red)
renderRow("Duralumin","T2","29","1800","40","YES","NO",yellow,yellow,yellow,red,red)
renderRow("G5 Titanium","T5","29","1800","40","YES","NO",yellow,yellow,yellow,red,red)
renderRow("Inconel","T3","29","2700","60","YES","NO",yellow,yellow,yellow,red,red)
renderRow("Luminescent","T1","11","90","2","YES","NO",red,red,green,red,red)
renderRow("Mangalloy","T5","29","2700","60","YES","NO",yellow,yellow,yellow,red,red)
renderRow("Maraging","T4","29","2700","60","YES","NO",yellow,yellow,yellow,red,red)
renderRow("Marble","T1","69","450","10","YES","NO",green,red,green,red,red)
renderRow("Plastic","T1","141","900","20","YES","PARTIAL",green,red,green,red,yellow)
renderRow("SC-AL","T4","29","1800","40","YES","NO",yellow,red,yellow,red,red)
renderRow("Silumin","T1","29","1800","40","YES","PARTIAL",yellow,red,yellow,red,yellow)
renderRow("Stainless Steel","T2","29","2700","60","YES","NO",yellow,yellow,yellow,red,red)
renderRow("Steel","T1","99","2700","60","YES","PARTIAL",green,yellow,yellow,red,yellow)
renderRow("Wood","T1","51","270","6","YES","PARTIAL",green,red,green,red,yellow)
end
