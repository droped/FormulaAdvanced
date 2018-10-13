--------------------------
----    FormulaPro2   ----
----  LGLP 3 License  ----
--------------------------
--[[Orignal code:
FormulaPro v1.41b LGLP 3 License
Jim Bauwens      Adrien Bertrand
TI-Planet.org   Inspired-Lua.org

and

PhysPro v1.3.0.1
alex3yoyo (Mr-Kitty)
LGLP 3 License
]]--

--Symbols--

function utf8(n)
 return string.uchar(n)
end

SubNumbers={185, 178, 179, 8308, 8309, 8310, 8311, 8312, 8313}

function numberToSub(w,n)
 return w..utf8(SubNumbers[tonumber(n)])
end

--Greek symbols
g = {} --Big     , Little   , Name
g.al = {utf8(913), utf8(945), "Alpha"}
g.be = {utf8(914), utf8(946), "Beta"}
g.ga = {utf8(915), utf8(947), "Gamma"}
g.de = {utf8(916), utf8(948), "Delta"}
g.ep = {utf8(917), utf8(949), "Epsilon"}
g.ze = {utf8(918), utf8(950), "Zeta"}
g.et = {utf8(919), utf8(951), "Eta"}
g.th = {utf8(920), utf8(952), "Theta"}
g.io = {utf8(921), utf8(953), "Iota"}
g.ka = {utf8(922), utf8(954), "Kappa"}
g.la = {utf8(923), utf8(955), "Lambda"}
g.mu = {utf8(924), utf8(956), "Mu"}
g.nu = {utf8(925), utf8(957), "Nu"}
g.xi = {utf8(926), utf8(958), "Xi"}
g.om = {utf8(927), utf8(959), "Omicron"}
g.pi = {utf8(928), utf8(960), "Pi"}
g.rh = {utf8(929), utf8(961), "Rho"}
g.si = {utf8(931), utf8(963), "Sigma"}
g.ta = {utf8(932), utf8(964), "Tau"}
g.up = {utf8(933), utf8(965), "Upsilon"}
g.ph = {utf8(934), utf8(966), "Phi"}
g.ch = {utf8(935), utf8(967), "Chi"}
g.ps = {utf8(936), utf8(968), "Psi"}
g.omg = {utf8(937), utf8(969), "Omega"}

s = {}--Symbols
s.sph = utf8(8315)--superscript (sp) "-"
s.sp0 = utf8(8304)--sp "0"
s.sp1 = utf8(185)--sp "1"
s.sp2 = utf8(178)--sp "2"
s.sp3 = utf8(179)--sp "3"
s.sp4 = utf8(8308)--sp "4"
s.sp5 = utf8(8309)--sp "5"
s.sp6 = utf8(8310)--sp "6"
s.sp7 = utf8(8311)--sp "7"
s.sp8 = utf8(8312)--sp "8"
s.sp9 = utf8(8313)--sp "9"
s.sp1h = s.sph..s.sp1--sp "-1"
s.sp2h = s.sph..s.sp2--sp "-2"
s.sb1 = utf8(8321)--sb "1"
s.sb2 = utf8(8322)--Subscript (sb) "2"
s.bul = utf8(8729)--Bullet operator
s.dg = utf8(176)--Degree symbol
s.th0 = g.th[2].."0"--Theta0
s.la0 = g.la[2].."0"--Lambda0
s.dv = g.de[1].."v"--Change in velocity
s.dpm = g.de[1].."pm"--Change in momentum
s.dt = g.de[1].."t"--Change in time
s.dh = g.de[1].."h"--Change in height
s.dtt = g.de[1].."TT"--Change in tempurature
s.dvl = g.de[1].."V"--Change in volume
s.dn = g.de[1].."N"--Change in amount of nuclei
s.Omm = g.omg[1]..s.bul.."m"--Resistivity unit (ohms * meter)
s.m2 = "m"..s.sp2--m2
s.m3 = "m"..s.sp3--m3
s.ms2 = "m/s"..s.sp2--m/s2
s.kgm3 = "kg/m"..s.sp3--kg/m3
s.ns = "N"..s.bul.."s"--N*s
s.ep0 = g.ep[2].."0"
s.mu0 = g.mu[2].."0"
s.dph = g.de[1]..g.ph[1]
s.jkgk = "J/kg"..s.bul.."K"--J/kg*K

--End of Symbols--
