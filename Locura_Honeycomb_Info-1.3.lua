-- ↓ START EDITABLE OPTIONS ↓ --
local b='left' -- "right/left" Sets the screen direction useful for placing screens together.
-- ↑ END EDITABLE OPTIONS ↑ --
    
-- DONT EDIT BELOW THIS LINE --

-- Locura Honeycomb Info - v1.3 (06/20/2023)
-- Information / Updates / Downloads: GitHub/LocuraDU 
-- Script Credits: GitHub/CredenceHamby & GitHub/Jericho1060
-- Built using the wonderful tools at https://du-lua.dev/
-- Love With Your Heart, Use Your Head For Everything Else - Captain Disillusion
-- Purchase of this code in game is for your own use. Please respect our work and do not share, sell, or give away our work. Any code found in game that is being used by non authorized players will be reported to NQ. We have other amazing scripts that you can freely use and modify.
local a=true;local c=-11.5;local d='LOCURA HONEYCOMB INFO'local e=1.3;local f='G I T H U B  /  L O C U R A D U'local g=true;local h=true;local i,j;if a then j,i=getResolution()else i,j=getResolution()end;local k=loadFont('Play-Bold',18)local l=loadFont('Play',14)local m=loadFont('Play',18)local n=loadFont('Play',8)local o={177/255,42/255,42/255}local p={249/255,212/255,123/255}local q={34/255,177/255,76/255}local r={110/255,166/255,181/255}local s=createLayer()setDefaultStrokeColor(s,Shape_Line,0,0,0,0.5)setDefaultShadow(s,Shape_Line,6,0,0,0,0.5)local t=createLayer()setDefaultFillColor(t,Shape_Box,0.075,0.125,0.156,1)setDefaultFillColor(t,Shape_Text,0.710,0.878,0.941,1)setDefaultTextAlign(t,AlignH_Center,AlignV_Middle)local u=createLayer()setDefaultFillColor(u,Shape_Text,r[1],r[2],r[3],1)setDefaultFillColor(u,Shape_Box,0.075,0.125,0.156,1)setDefaultFillColor(u,Shape_Line,1,1,1,1)setDefaultTextAlign(u,AlignH_Left,AlignV_Middle)local v=createLayer()setDefaultFillColor(v,Shape_Text,r[1],r[2],r[3],1)setDefaultTextAlign(v,AlignH_Right,AlignV_Middle)setBackgroundColor(15/255,24/255,29/255)if a then local w=90;local x=j;local y=0;if b=="left"then w=w+180;x=0;y=i end;setLayerTranslation(s,x,y)setLayerRotation(s,math.rad(w))setLayerTranslation(t,x,y)setLayerRotation(t,math.rad(w))setLayerTranslation(u,x,y)setLayerRotation(u,math.rad(w))setLayerTranslation(v,x,y)setLayerRotation(v,math.rad(w))end;function rH(d)local z=12;local A=35;addLine(s,0,A+12,i,A+12)addBox(t,0,12,i,A)addText(t,k,d,140,30)setNextTextAlign(t,AlignH_Right,AlignV_Baseline)addText(t,l," v"..e,i-10,35)end;function rF(f)local z=12;local A=35;addLine(s,0,j-A+z,i,j-A+z)addBox(t,0,j-A-z,i,A)setNextFillColor(t,0.24,0.25,0.25,1)addText(t,n,f,i-60,j-30)end;local B=50;function rT(d,C)local A=20;B=B+(C or 0)addLine(s,0,B+A,i,B+A)addBox(t,0,B,i,A)addText(t,l,d,i-570,B+A/2)addText(t,l,'VARIATIONS',i-395,B+A/2)addText(t,l,'HITPOINTS',i-295,B+A/2)addText(t,l,'CCS',i-225,B+A/2)addText(t,l,'MASS',i-165,B+A/2)addText(t,l,'SCHEM',i-105,B+A/2)addText(t,l,'NANO',i-30,B+A/2)B=B+A end;function rR(D,E,F,G,H,I,J,K,L,M,N,O,P,Q)local A=35;addText(u,m,D,25,B+A/2)addText(u,m,E,160,B+A/2)setNextFillColor(v,L[1],L[2],L[3],1)addText(v,m,F,i-385,B+A/2)setNextFillColor(v,M[1],M[2],M[3],1)addText(v,m,G,i-275,B+A/2)setNextFillColor(v,N[1],N[2],N[3],1)addText(v,m,H,i-205,B+A/2)setNextFillColor(v,O[1],O[2],O[3],1)addText(v,m,I,i-155,B+A/2)setNextFillColor(v,P[1],P[2],P[3],1)addText(v,m,J,i-90,B+A/2)setNextFillColor(v,Q[1],Q[2],Q[3],1)addText(v,m,K,i-10,B+A/2)B=B+A+c end;rH(d)rF(f)if g then rT('PURE','0')rR("Aluminium","T1","44","6250","2700","50","NO","SOME",q,p,o,p,q,p)rR("Calcium","T2","29","6250","3240","50","YES","NO",p,p,o,p,o,o)rR("Carbon","T1","29","3125","1350","25","NO","SOME",p,o,o,q,q,p)rR("Chromium","T2","44","9375","4860","75","YES","NO",q,p,p,p,o,o)rR("Cobalt","T4","29","9375","6998","75","YES","NO",p,p,p,p,o,o)rR("Copper","T2","44","12500","6480","100","YES","NO",q,q,p,o,o,o)rR("Flourine","T4","29","3125","2333","25","YES","NO",p,o,o,q,o,o)rR("Gold","T4","44","12500","9331","100","YES","NO",q,q,q,o,o,o)rR("Iron","T1","44","12500","5400","100","NO","SOME",q,q,p,o,q,p)rR("Lithium","T3","29","3125","1944","25","YES","NO",p,o,o,q,o,o)rR("Manganese","T5","29","9375","8398","75","YES","NO",p,p,q,p,o,o)rR("Nickle","T3","29","9375","5832","75","YES","NO",p,p,p,p,o,o)rR("Niobium","T5","29","12500","11197","100","YES","NO",p,q,q,o,o,o)rR("Scandium","T4","29","6250","4666","50","YES","NO",p,p,p,p,o,o)rR("Silicon","T1","29","9375","4050","75","NO","SOME",p,p,p,p,q,p)rR("Silver","T3","29","12500","7776","100","YES","NO",p,q,q,o,o,o)rR("Sodium","T2","29","3125","1620","25","YES","NO",p,o,o,q,o,o)rR("Sulfer","T3","29","6250","3888","50","YES","NO",p,p,o,p,o,o)rR("Titanium","T5","44","3125","2799","25","YES","NO",q,o,o,q,o,o)rR("Vanadium","T5","29","6250","5599","50","YES","NO",p,p,p,p,o,o)end;if h then rT('PRODUCT','10')rR("AL-LI","T3","29","5000","4939","40","YES","NO",p,p,p,p,o,o)rR("Brick","T1","51","1000","504","8","YES","SOME",q,o,o,q,o,p)rR("Carbon Fiber","T1","15","500","252","4","YES","SOME",o,o,o,q,o,p)rR("Concrete","T1","15","1500","756","12","YES","NO",o,o,o,q,o,o)rR("Duralumin","T2","29","5000","3528","40","YES","NO",p,p,o,p,o,o)rR("G5 Titanium","T5","29","5000","9681","40","YES","NO",p,p,q,p,o,o)rR("Inconel","T3","29","7500","7409","60","YES","NO",p,p,q,p,o,o)rR("Luminescent","T1","11","250","126","2","YES","NO",o,o,o,q,o,o)rR("Mangalloy","T5","29","7500","14521","60","YES","NO",p,p,q,p,o,o)rR("Maraging","T4","29","7500","10372","60","YES","NO",p,p,q,p,o,o)rR("Marble","T1","69","1250","630","10","YES","NO",q,o,o,q,o,o)rR("Plastic","T1","141","2500","1260","20","YES","SOME",q,o,o,q,o,p)rR("SC-AL","T4","29","5000","6915","40","YES","NO",p,o,p,p,o,o)rR("Silumin","T1","29","5000","2520","40","YES","SOME",p,o,o,p,o,p)rR("Stainless Steel","T2","29","7500","5292","60","YES","NO",p,p,o,p,o,o)rR("Steel","T1","99","7500","3780","60","YES","SOME",q,p,o,p,o,p)rR("Wood","T1","51","750","378","6","YES","SOME",q,o,o,q,o,p)end