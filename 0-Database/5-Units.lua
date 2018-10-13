--Units--

local mathpi = math.pi

Units = {}

function Units.mainToSub(main, sub, n)
 local c = Units[main][sub]
 return n * c[1] + c[2]
end

function Units.subToMain(main, sub, n)
 local c = Units[main][sub]
 return (n - c[2]) / c[1]
end

--[[

Units["mainunit"] = {}
Units["mainunit"]["subunit"] = {a, b}

meaning: n mainunit = n*a+b subunit
or
n subunit = (n-b)/a mainunit

--]]

Mt = {}

Mt.G = 1 / 1000000000
Mt.Gi = 1 / 100000000
Mt.T = 1 / 10000000
Mt.M = 1 / 1000000
Mt.q = 1 / 100000
Mt.Mi = 1 / 10000
Mt.k = 1 / 1000
Mt.h = 1 / 100
Mt.da = 1 / 10
Mt.d = 10
Mt.c = 100
Mt.m = 1000
Mt.u = 1000000
Mt.n = 1000000000
Mt.p = 1000000000000

Ms = {}
Ms.min = 60
Ms.hr = 3600
Ms.day = 86400
Ms.wk = 604800
Ms.yr = 217728000

--Seconds
Units["s"] = {}
Units["s"]["min"] = {Ms.min, 0}
Units["s"]["hr"] = {Ms.hr, 0}
Units["s"]["day"] = {Ms.day, 0}
Units["s"]["wk"] = {Ms.wk, 0}
Units["s"]["yr"] = {Mt.yr, 0}
Units["s"]["ms"] = {Mt.m, 0}
Units["s"][g.mu[2].."s"] = {Mt.u, 0}
Units["s"]["ns"] = {Mt.n, 0}

--Electricity

--Watts per kelvin
Units["W/K"] = {}
Units["W/K"]["kW/K"] = {Mt.k, 0}
Units["W/K"]["mW/K"] = {Mt.m, 0}

--Volts per meter
Units["V/m"] = {}
Units["V/m"]["mV/m"] = {Mt.m, 0}
Units["V/m"]["V/mm"] = {1 / Mt.m, 0}
Units["V/m"]["V/cm"] = {1 / Mt.c, 0}

--Electrical charge per meter squared
Units["C/m2"] = {}
Units["C/m2"]["mC/m2"] = {Mt.m, 0}
Units["C/m2"][g.mu[2].."C/m2"] = {Mt.u, 0}

--Volts per second
Units["V/s"] = {}
Units["V/s"]["mV/s"] = {Mt.m, 0}

--Electrical charge per meter
Units["C/m"] = {}
Units["C/m"][g.mu[2].."C/m"] = {Mt.u, 0}
Units["C/m"]["C/mm"] = {1 / Mt.m, 0}

--Watts
Units["W"] = {}
Units["W"]["GW"] = {Mt.G, 0}
Units["W"]["MW"] = {Mt.M, 0}
Units["W"]["kW"] = {Mt.k, 0}
Units["W"]["mW"] = {Mt.m, 0}
Units["W"][g.mu[2].."W"] = {Mt.u, 0}
Units["W"]["J/s"] = {1, 0}

--Joules per second
Units["J/s"] = {}

--Joule
Units["J"] = {}
Units["J"]["GJ"] = {Mt.G, 0}
Units["J"]["MJ"] = {Mt.M, 0}
Units["J"]["kJ"] = {Mt.k, 0}
Units["J"]["kWh"] = {1 / 3600000, 0}
Units["J"]["cal"] = {0.23923444976, 0}
Units["J"]["mJ"] = {Mt.m, 0}
Units["J"]["Wh"] = {0.000277778, 0}
Units["J"]["Ws"] = {1, 0}



--Meters per second
Units["m/s"] = {}
Units["m/s"]["km/s"] = {Mt.k, 0}
Units["m/s"]["cm/s"] = {Mt.c, 0}
Units["m/s"]["mm/s"] = {Mt.m, 0}
Units["m/s"]["m/h"] = {3600, 0}
Units["m/s"]["km/h"] = {3.6, 0}

--Meters per second squared
Units["m/s2"] = {}

--Meter
Units["m"] = {}
Units["m"]["pm"] = {Mt.p, 0}
Units["m"]["nm"] = {Mt.n, 0}
Units["m"][g.mu[2].."m"] = {Mt.u, 0}
Units["m"]["mm"] = {Mt.m, 0}
Units["m"]["cm"] = {Mt.c, 0}
Units["m"]["dm"] = {Mt.d, 0}
Units["m"]["km"] = {Mt.k, 0}
Units["m"]["in"] = {0.0254, 0}
Units["m"]["ft"] = {0.3048, 0}
Units["m"]["yd"] = {0.9144, 0}
Units["m"]["mi"] = {1609.34, 0}
Units["m"]["Nmi"] = {1852, 0}
Units["m"]["ftm"] = {1.8288, 0}
Units["m"]["FB-F"] = {109.7, 0}

--Meters squared
Units[s.m2] = {}
Units[s.m2]["nm"..s.sp2] = {Mt.n, 0}
Units[s.m2][g.mu[2]..s.m2] = {Mt.u, 0}
Units[s.m2]["mm"..s.sp2] = {Mt.m2, 0}
Units[s.m2]["cm"..s.sp2] = {Mt.c, 0}
Units[s.m2]["km"..s.sp2] = {Mt.k, 0}
Units[s.m2]["in"..s.sp2] = {0.0254, 0}
Units[s.m2]["ft"..s.sp2] = {0.3048, 0}
Units[s.m2]["yd"..s.sp2] = {0.9144, 0}
Units[s.m2]["mi"..s.sp2] = {1609.34, 0}
Units[s.m2]["Nmi"..s.sp2] = {1852, 0}


--Gram
Units["g"] = {}
Units["g"]["Gg"] = {Mt.Gi, 0}
Units["g"]["Tg"] = {Mt.T, 0}
Units["g"]["Gg"] = {Mt.M, 0}
Units["g"]["q"] = {Mt.q, 0}
Units["g"]["mag"] = {Mt.Mi, 0}
Units["g"]["kg"] = {Mt.k, 0}
Units["g"]["hg"] = {Mt.h, 0}
Units["g"]["dag"] = {Mt.da, 0}
Units["g"]["dg"] = {Mt.d, 0}
Units["g"]["cg"] = {Mt.c, 0}
Units["g"]["mg"] = {Mt.m, 0}
Units["g"][g.mu[2].."g"] = {Mt.u, 0}
Units["g"]["ng"] = {Mt.n, 0}
Units["g"]["pg"] = {Mt.p, 0}

--Hertz
Units["Hz"] = {}
Units["Hz"]["kHz"] = {Mt.k, 0}
Units["Hz"]["MHz"] = {Mt.M, 0}
Units["Hz"]["GHz"] = {Mt.G, 0}

--Radians per second
Units["rad/s"] = {}
Units["rad/s"]["RPM"] = {1 / (2 * mathpi / 60), 0}



Units[g.omg[1].."/m"] = {}
Units[g.omg[1].."/m"][g.omg[1].."/cm"] = {1 / Mt.c, 0}
Units[g.omg[1].."/m"][g.omg[1].."/mm"] = {1 / Mt.m, 0}

--Newton
Units["N"] = {}
Units["N"]["daN"] = {Mt.da, 0}


Units["S/m"] = {}
Units["S/m"]["mS/m"] = {Mt.m, 0}
Units["S/m"]["S/mm"] = {1 / Mt.m, 0}


Units["C"] = {}
Units["C"]["mC"] = {Mt.m, 0}
Units["C"][g.mu[2].."C"] = {Mt.u, 0}

--Newtons per meter
Units["N/m"] = {}
Units["N/m"]["daN"] = {Mt.da, 0}


Units[g.omg[1].."*m"] = {}
Units[g.omg[1].."*m"][g.omg[1].."*cm"] = {Mt.c, 0}
Units[g.omg[1].."*m"][g.omg[1].."*mm"] = {Mt.m, 0}

--Kelvin (temperature)
Units["K"] = {}
Units["K"]["°C"] = {1, -273.15}
Units["K"]["°F"] = {9 / 5, -459.67}
Units["K"]["°R"] = {9 / 5, 0}


Units["Wb"] = {}
Units["Wb"]["mWb"] = {Mt.m, 0}


Units["A"] = {}
Units["A"]["kA"] = {Mt.k, 0}
Units["A"]["mA"] = {Mt.m, 0}
Units["A"][g.mu[2].."A"] = {Mt.u, 0}


Units["F/m"] = {}
Units["F/m"]["F/cm"] = {1 / Mt.c, 0}
Units["F/m"]["F/mm"] = {1 / Mt.m, 0}
Units["F/m"][g.mu[2].."F/m"] = {Mt.u, 0}


Units["H/m"] = {}
Units["H/m"]["mH/m"] = {Mt.m, 0}
Units["H/m"]["H/mm"] = {1 / Mt.m, 0}
Units["H/m"][g.mu[2].."H/m"] = {Mt.u, 0}


Units["F/m2"] = {}
Units["F/m2"]["F/cm2"] = {1 / Mt.c ^ 2, 0}
Units["F/m2"]["mF/m2"] = {Mt.m, 0}
Units["F/m2"][g.mu[2].."F/m2"] = {Mt.u, 0}


Units["N*m"] = {}
Units["N*m"]["daN*m"] = {Mt.da, 0}
Units["N*m"]["N*cm"] = {Mt.c, 0}
Units["N*m"]["N*mm"] = {Mt.m, 0}


Units["S"] = {}
Units["S"]["mS"] = {Mt.m, 0}
Units["S"][g.mu[2].."S"] = {Mt.u, 0}


Units["T"] = {}
Units["T"]["mT"] = {Mt.m, 0}
Units["T"][g.mu[2].."T"] = {Mt.u, 0}
Units["T"]["nT"] = {Mt.n, 0}


Units["A/m"] = {}
Units["A/m"]["mA/m"] = {Mt.m, 0}


Units["V"] = {}
Units["V"]["MV"] = {Mt.M, 0}
Units["V"]["kV"] = {Mt.k, 0}
Units["V"]["mV"] = {Mt.m, 0}
Units["V"][g.mu[2].."V"] = {Mt.u, 0}

--Metters squared
Units["m2"] = {}
Units["m2"]["cm2"] = {10000, 0}
Units["m2"]["mm2"] = {1000000, 0}
Units["m2"]["km2"] = {1/1000000, 0}
Units["m2"]["dm2"] = {100, 0}

--Degree
Units["degree"] = {}
Units["degree"]["rad"] = {1 / ( 180 / mathpi ), 0}
Units["degree"]["gon"] = {1 / ( 9 / 10 ), 0}

--Ohm
Units[g.omg[1]] = {}
Units[g.omg[1]]["m"..g.omg[1]] = {Mt.m, 0}
Units[g.omg[1]]["k"..g.omg[1]] = {Mt.k, 0}
Units[g.omg[1]]["M"..g.omg[1]] = {Mt.M, 0}


Units["A/V2"] = {}
Units["A/V2"]["mA/V2"] = {Mt.m, 0}


Units["F"] = {}
Units["F"]["kF"] = {Mt.k, 0}
Units["F"]["mF"] = {Mt.m, 0}
Units["F"][g.mu[2].."F"] = {Mt.u, 0}
Units["F"]["nF"] = {Mt.n, 0}


Units["H"] = {}
Units["H"]["mH"] = {Mt.m, 0}
Units["H"][g.mu[2].."H"] = {Mt.u, 0}
Units["H"]["nH"] = {Mt.n, 0}

--Pascal
Units["Pa"] = {}
Units["Pa"]["hPa"] = {Mt.h, 0}
Units["Pa"]["bar"] = {1 / 100000, 0}
Units["Pa"]["atm"] = {1.01325, 0}


Units["A/Wb"] = {}


Units["1/K"] = {}


Units["W/m*K"] = {}


Units["1/"..s.dg.."K"] = {}


Units["J/K"] = {}


Units["J/kg/K"] = {}

--Newtons per kilogram
Units["N/kg"] = {}


Units["m2/s"] = {}


Units["1/m3"] = {}


Units["1/V"] = {}


Units["1/m4"] = {}


Units["A/(m2*K2)"] = {}


Units["V5"] = {}


Units["m2/(V*s)"] = {}


Units[s.m2] = {}
Units[s.m2]["nm"..s.sp2] = {Mt.n, 0}
Units[s.m2][g.mu[2]..s.m2] = {Mt.u, 0}
Units[s.m2]["mm"..s.sp2] = {Mt.m2, 0}
Units[s.m2]["cm"..s.sp2] = {Mt.c, 0}
Units[s.m2]["km"..s.sp2] = {Mt.k, 0}
Units[s.m2]["in"..s.sp2] = {0.0254, 0}
Units[s.m2]["ft"..s.sp2] = {0.3048, 0}
Units[s.m2]["yd"..s.sp2] = {0.9144, 0}
Units[s.m2]["mi"..s.sp2] = {1609.34, 0}
Units[s.m2]["Nmi"..s.sp2] = {1852, 0}

--Volume
Units[s.m3] = {}
Units[s.m3]["mm"..s.sp3] = {Mt.m, 0}
Units[s.m3]["cm"..s.sp3] = {Mt.c, 0}
Units[s.m3]["km"..s.sp3] = {Mt.k, 0}
Units[s.m3]["ml"] = {0.000001, 0}
Units[s.m3]["l"] = {0.001, 0}
Units[s.m3]["in"..s.sp3] = {0.000016387064, 0}
Units[s.m3]["ft"..s.sp3] = {0.028316846592, 0}
Units[s.m3]["yd"..s.sp3] = {0.764554857984, 0}
Units[s.m3]["tsp"] = {0.00000492892159375, 0}
Units[s.m3]["tbsp"] = {0.00001478676478125, 0}
Units[s.m3]["floz"] = {0.0000295735295625, 0}
Units[s.m3]["cup"] = {0.0002365882365, 0}
Units[s.m3]["pt"] = {0.000473176473, 0}
Units[s.m3]["qt"] = {0.000946352946, 0}
Units[s.m3]["gal"] = {0.003785411784, 0}
Units[s.m3]["flozUK"] = {0.000028413075, 0}
Units[s.m3]["galUK"] = {0.004546092, 0}

--Velocity
Units["m/s"] = {}
Units["m/s"]["km/s"] = {Mt.k, 0}
Units["m/s"]["cm/s"] = {Mt.c, 0}
Units["m/s"]["mm/s"] = {Mt.m, 0}
Units["m/s"]["m/hr"] = {Ms.hr, 0}
Units["m/s"]["km/hr"] = {3.6, 0}
Units["m/s"]["knot"] = {0.514444, 0}
Units["m/s"]["mi/hr"] = {0.44704, 0}
Units["m/s"]["km/min"] = {16.6667, 0}
Units["m/s"]["ft/min"] = {0.00508, 0}
Units["m/s"]["ft/s"] = {0.3048, 0}
Units["m/s"]["mi/min"] = {26.8224, 0}

--Acceleration
Units[s.ms2] = {}
Units[s.ms2]["km/s"..s.sp2] = {Mt.k, 0}
Units[s.ms2]["cm/s"..s.sp2] = {Mt.c, 0}
Units[s.ms2]["mm/s"..s.sp2] = {Mt.m, 0}
Units[s.ms2]["m/hr"..s.sp2] = {Ms.hr, 0}
Units[s.ms2]["km/hr"..s.sp2] = {3.6, 0}
Units[s.ms2]["knot"..s.sp2] = {0.514444, 0}
Units[s.ms2]["mi/hr"..s.sp2] = {0.44704, 0}
Units[s.ms2]["km/min"..s.sp2] = {16.6667, 0}
Units[s.ms2]["ft/min"..s.sp2] = {0.00508, 0}
Units[s.ms2]["ft/s"..s.sp2] = {0.3048, 0}
Units[s.ms2]["mi/min"..s.sp2] = {26.8224, 0}

--Mass
Units["kg"] = {}
Units["kg"]["g"] = {Mt.m, 0}
Units["kg"]["mg"] = {Mt.u, 0}
Units["kg"]["lb"] = {0.453592, 0}
Units["kg"]["oz"] = {0.0283495, 0}
Units["kg"]["ton"] = {907.185, 0}
Units["kg"]["slug"] = {14.5939, 0}

--Force
Units["N"] = {}
Units["N"]["kN"] = {Mt.k, 0}
Units["N"]["mN"] = {Mt.m, 0}
Units["N"]["dyn"] = {100000, 0}
Units["N"]["lbf"] = {0.224809, 0}
Units["N"]["kgf"] = {0.101972, 0}
Units["N"]["tonf"] = {0.000112404, 0}

--Newton*sec (Impulse/Momentum)
Units[s.ns] = {}

--Energy
Units["J"] = {}
Units["J"]["GJ"] = {Mt.G, 0}
Units["J"]["MJ"] = {Mt.M, 0}
Units["J"]["kJ"] = {Mt.k, 0}
Units["J"]["mJ"] = {Mt.m, 0}
Units["J"]["kWh"] = {3600000, 0}
Units["J"]["ftlb"] = {1.35582, 0}
Units["J"]["BTU"] = {1055.06, 0}

--Power
Units["W"] = {}
Units["W"]["GW"] = {Mt.G, 0}
Units["W"]["MW"] = {Mt.M, 0}
Units["W"]["kW"] = {Mt.k, 0}
Units["W"]["mW"] = {Mt.m, 0}
Units["W"]["hp"] = {745.7, 0}

--Pressure
Units["Pa"] = {}
Units["Pa"]["mPA"] = {Mt.m, 0}
Units["Pa"]["kPa"] = {Mt.k, 0}
Units["Pa"]["MPa"] = {Mt.M, 0}
Units["Pa"]["mmH"..s.sb2.."O"] = {9.80665, 0}
Units["Pa"]["inH"..s.sb2.."O"] = {249.08891, 0}
Units["Pa"]["mmHg"] = {133.32236842105, 0}
Units["Pa"]["inHg"] = {3338.6388157895, 0}
Units["Pa"]["mbar"] = {100, 0}
Units["Pa"]["lb/ft"..s.sp2] = {47.880258980336, 0}
Units["Pa"]["psi"] = {6894.7572931684, 0}
Units["Pa"]["atm"] = {101325, 0}

--Temperature
Units["K"] = {}
Units["K"][s.dg.."C"] = {1, 273.15}
--Units["K"][s.dg.."F"] = {0, 0}

--Moles
Units["mol"] = {}

--Molecular mass
Units["amu"] = {}
Units["amu"]["kg"] = {0.000000000000000000000000001660538782, 0}
Units["amu"]["g"] = {0.000000000000000000000001660538782, 0}
Units["amu"]["mg"] = {0.000000000000000000001660538782, 0}

--Heat Capacity
Units[s.jkgk] = {}
Units[s.jkgk]["J/kg"..s.bul.."C"] = {1, 0}
--Units["J/kg*K"]["Cal/kg*K"] = {}

--Mole Energy
Units["kJ/mol"] = {}

--Density
Units[s.kgm3] = {}

--Spring Constant
Units["N/m"] = {}

--Frequency
Units["Hz"] = {}
Units["Hz"]["kHz"] = {Mt.k, 0}
Units["Hz"]["MHz"] = {Mt.M, 0}
Units["Hz"]["GHz"] = {Mt.G, 0}
Units["Hz"]["mHz"] = {Mt.m, 0}
Units["Hz"]["nHz"] = {Mt.n, 0}

--Charge
Units["C"] = {}
Units["C"]["mC"] = {Mt.m, 0}
Units["C"][g.mu[2].."C"] = {Mt.u, 0}

--Voltage
Units["V"] = {}
Units["V"]["mV"] = {Mt.m, 0}

--Current
Units["A"] = {}
Units["A"]["mA"] = {Mt.m, 0}
Units["A"][g.mu[2].."A"] = {Mt.u, 0}

--Resistence
Units[g.omg[1]] = {}
Units[g.omg[1]]["k"..g.omg[1]] = {Mt.k, 0}
Units[g.omg[1]]["m"..g.omg[1]] = {Mt.m, 0}
Units[g.omg[1]][g.mu[2]..g.omg[1]] = {Mt.u, 0}

--Resistivity
Units[s.Omm] = {}

--Teslas
Units["T"] = {}

--Decay Reate
Units["Bq"] = {}

--Amount of nuclei
Units["nuclei"] = {}

--End of Units--
