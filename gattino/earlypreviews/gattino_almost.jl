using DataFrames
using Gattino

df = DataFrame("petal" => randn(20), "age" => randn(20), "petal_count" => randn(20), "stem" => randn(20))
#==output[code]
DataFrames.DataFrame(AbstractVector[[-0.9674035403169934, -1.0721516274845007, 1.031578759292723, -0.12790122984017738, -0.42427219113244186, 1.454677051220951, 0.1592196042011996, 0.15816486017308198, -0.7258803463431358, -1.724482794726779, 0.047978697193698995, 0.5507123632101013, 0.4737139468017035, 1.0214390509250029, 0.15513592721663666, -2.0782648405005055, -0.5887650643397632, -0.16181465694248057, -0.40633828471911904, 0.48898355302719687], [-0.06326779122439795, -0.6288312680301718, 0.44094312188409057, 0.8304821319430142, -0.20987040464470932, 0.3314149174899625, -0.31791382311033123, 1.1134893242459953, -0.30645258038104606, -0.6123327983076988, -0.7245095045170145, -0.6758264574321742, -0.6067080299730967, -0.07366343864678532, 0.8337172484544397, -0.2567787853175363, -1.0354292885224952, 1.580242155849205, 1.504254625078248, 0.41006042014175936], [-0.6296016089304748, 0.5107211653292689, -1.350266216806628, -1.0320703907389481, -0.3511047139781926, -0.2115977388039989, 0.8406627531478875, -0.0906430026146854, 0.2567987202341359, 2.5337560753251775, 0.978853376040859, -0.15614978448557257, 0.8554478128805579, -0.9469109303684797, -0.18869373022518102, 0.10328648280329843, -0.6847004085118495, -1.319449457768808, -0.13160608449470335, 1.4153880439211184], [0.2158226566826735, 1.0503418047111808, 1.0815319868003734, -0.63500307628113, -0.6345138043956887, 1.2162011868714715, 0.6507393050345348, 0.46386563099753997, 0.6872371753907335, 0.3584358587701028, -0.5273774508934302, -1.028351520024953, -0.30153240193585085, -0.5508123726656078, -0.3643046486678875, -0.36416416589817635, 1.2761932230959119, 1.0790997397754394, 0.3014252963164953, 1.1147235222487386]], DataFrames.Index(Dict(:petal_count => 3, :age => 2, :petal => 1, :stem => 4), [:petal, :age, :petal_count, :stem]), nothing, nothing, true)
==#
#==|||==#
figure1 = scatter(df, "petal", "age", 
title = "flowers", xlabel = "petal", ylabel = "age")
#==output[code]
"<svg id=window height=500 width=500><text id=4A3dm4ri y=40 style='fill: black;font-size: 15pt;' x=175>flowers</text><g id=title height=500 width=500></g><g id=axes height=375 width=375><line id=vmN48t2v y1=435 x2=435 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line><line id=Z5GT3xJe y1=60 x2=60 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line></g><g id=grid height=375 width=375><line id=d2YuJvqx y1=60 x2=61 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=61></line><line id=qgGDMmxm y1=61 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=61 x1=60></line><line id=cTEkvSGe y1=60 x2=155 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=155></line><line id=HTi3JSaW y1=155 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=155 x1=60></line><line id=rSstYgOJ y1=60 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=249></line><line id=7KU81SSQ y1=249 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=60></line><line id=2uHR1TPt y1=60 x2=343 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=343></line><line id=hHGSiNd9 y1=343 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=343 x1=60></line></g><g id=age height=375 width=375><circle id=LZay2fO5 cx=178 style='fill: #809980;' r=5 cy=296></circle><circle id=f5qPCEok cx=167 style='fill: #809980;' r=5 cy=377></circle><circle id=afJzAcmf cx=389 style='fill: #809980;' r=5 cy=224></circle><circle id=RBzfKSkT cx=266 style='fill: #809980;' r=5 cy=168></circle><circle id=V8T1RmmH cx=235 style='fill: #809980;' r=5 cy=317></circle><circle id=PBKeIjD7 cx=434 style='fill: #809980;' r=5 cy=240></circle><circle id=td5NsbSU cx=297 style='fill: #809980;' r=5 cy=332></circle><circle id=VS7NbBDR cx=297 style='fill: #809980;' r=5 cy=128></circle><circle id=0gAfyTe2 cx=203 style='fill: #809980;' r=5 cy=331></circle><circle id=BEaXCLY1 cx=97 style='fill: #809980;' r=5 cy=375></circle><circle id=jUif6lPE cx=285 style='fill: #809980;' r=5 cy=391></circle><circle id=IZPApPgq cx=338 style='fill: #809980;' r=5 cy=384></circle><circle id=zmvjnpUQ cx=330 style='fill: #809980;' r=5 cy=374></circle><circle id=fIClwsMf cx=388 style='fill: #809980;' r=5 cy=297></circle><circle id=YbkfbfyI cx=296 style='fill: #809980;' r=5 cy=168></circle><circle id=2tPjEkJ5 cx=60 style='fill: #809980;' r=5 cy=324></circle><circle id=spGPeZnn cx=218 style='fill: #809980;' r=5 cy=435></circle><circle id=kq4VD4F6 cx=263 style='fill: #809980;' r=5 cy=61></circle><circle id=3mScqyWS cx=237 style='fill: #809980;' r=5 cy=72></circle><circle id=wrpnIBR9 cx=332 style='fill: #809980;' r=5 cy=228></circle></g><g id=petal_count height=375 width=375><circle id=petal_count-preview cx=382 style='fill: #809980;' r=5 cy=362></circle><circle id=vtm0x7WZ cx=167 style='fill: #809980;' r=5 cy=256></circle><circle id=Fgy4XqRj cx=389 style='fill: #809980;' r=5 cy=435></circle><circle id=Cp9rjVe9 cx=266 style='fill: #809980;' r=5 cy=404></circle><circle id=1bNE3kD9 cx=235 style='fill: #809980;' r=5 cy=339></circle><circle id=OH03jIJP cx=434 style='fill: #809980;' r=5 cy=325></circle><circle id=K2gCyop0 cx=297 style='fill: #809980;' r=5 cy=224></circle><circle id=wlUKek7s cx=297 style='fill: #809980;' r=5 cy=314></circle><circle id=1usL7xLu cx=203 style='fill: #809980;' r=5 cy=280></circle><circle id=kcGDniAg cx=97 style='fill: #809980;' r=5 cy=61></circle><circle id=YiGQnMiU cx=285 style='fill: #809980;' r=5 cy=211></circle><circle id=O1EDhVt5 cx=338 style='fill: #809980;' r=5 cy=320></circle><circle id=UpmS2I4t cx=330 style='fill: #809980;' r=5 cy=223></circle><circle id=DWqgLYaZ cx=388 style='fill: #809980;' r=5 cy=396></circle><circle id=iwWqd51c cx=296 style='fill: #809980;' r=5 cy=323></circle><circle id=NRPxW1ho cx=60 style='fill: #809980;' r=5 cy=295></circle><circle id=sdyZKR8A cx=218 style='fill: #809980;' r=5 cy=371></circle><circle id=D9qIi8bI cx=263 style='fill: #809980;' r=5 cy=432></circle><circle id=iNjFGjWB cx=237 style='fill: #809980;' r=5 cy=318></circle><circle id=lNHKeL1y cx=332 style='fill: #809980;' r=5 cy=169></circle></g><g id=stem height=375 width=375><circle id=stem-preview cx=382 style='fill: #4D8000;' r=5 cy=374></circle><circle id=Dwj5tTQz cx=167 style='fill: #4D8000;' r=5 cy=98></circle><circle id=4Yd9erJI cx=389 style='fill: #4D8000;' r=5 cy=93></circle><circle id=nYIdXiIV cx=266 style='fill: #4D8000;' r=5 cy=371></circle><circle id=FDZHl3mK cx=235 style='fill: #4D8000;' r=5 cy=371></circle><circle id=mYUt7gkp cx=434 style='fill: #4D8000;' r=5 cy=71></circle><circle id=N3fpoqNw cx=297 style='fill: #4D8000;' r=5 cy=163></circle><circle id=APJf0n7b cx=297 style='fill: #4D8000;' r=5 cy=193></circle><circle id=kxsga6AU cx=203 style='fill: #4D8000;' r=5 cy=157></circle><circle id=jTRMsLGB cx=97 style='fill: #4D8000;' r=5 cy=210></circle><circle id=4k4xkGCP cx=285 style='fill: #4D8000;' r=5 cy=354></circle><circle id=1P8KJIIv cx=338 style='fill: #4D8000;' r=5 cy=435></circle><circle id=ehv1ralj cx=330 style='fill: #4D8000;' r=5 cy=317></circle><circle id=nkMhuyca cx=388 style='fill: #4D8000;' r=5 cy=358></circle><circle id=o965Bj5D cx=296 style='fill: #4D8000;' r=5 cy=327></circle><circle id=60I2QZyr cx=60 style='fill: #4D8000;' r=5 cy=327></circle><circle id=qBOmuOnG cx=218 style='fill: #4D8000;' r=5 cy=61></circle><circle id=mQxqSC9M cx=263 style='fill: #4D8000;' r=5 cy=93></circle><circle id=uTJ9WN5t cx=237 style='fill: #4D8000;' r=5 cy=219></circle><circle id=qcABpjbU cx=332 style='fill: #4D8000;' r=5 cy=87></circle></g><g id=labels height=375 width=375><text id=8LjOIIgr y=425 style='fill: black;font-size: 10pt;' x=58>-2.078</text><text id=v3BfguxG y=59 style='fill: black;font-size: 10pt;' x=60>1.5802</text><text id=R9oyP2xF y=425 style='fill: black;font-size: 10pt;' x=152>-1.195</text><text id=uSoJ4Voe y=153 style='fill: black;font-size: 10pt;' x=60>0.9263</text><text id=9cFLWnMk y=425 style='fill: black;font-size: 10pt;' x=246>-0.311</text><text id=bdmg30lY y=247 style='fill: black;font-size: 10pt;' x=60>0.2724</text><text id=Oq4By9L7 y=425 style='fill: black;font-size: 10pt;' x=340>0.5714</text><text id=gBwwBrJE y=341 style='fill: black;font-size: 10pt;' x=60>-0.381</text><text id=kdKQm7Ze y=425 style='fill: black;font-size: 10pt;' x=434>1.4546</text><text id=t7FuDUGQ y=435 style='fill: black;font-size: 10pt;' x=60>-1.035</text></g><g id=axislabels height=375 width=375><text id=Fr2qrEMf y=405 style='stroke: darkgray;font-size: 12pt;' x=248>petal</text><text id=AB9xU0gT y=248 style='stroke: darkgray;font-size: 12pt;' x=0>age</text></g><g id=legend><rect id=legendbg width=100 y=350 height=40 style='stroke: darkgray;fill: white;stroke-width: 2px;' x=370></rect><circle id=petal_count-preview cx=382 style='fill: #809980;' r=5 cy=362></circle><text id=petal_count-label y=363.8 style='stroke: darkgray;font-size: 9pt;' x=394>petal_count</text><circle id=stem-preview cx=382 style='fill: #4D8000;' r=5 cy=374></circle><text id=stem-label y=377.6 style='stroke: darkgray;font-size: 9pt;' x=394>stem</text></g></svg>"
==#
#==|||==#
figure2 = context(250, 250) do con::Context
   Gattino.scatter_plot!(con, df[!, "petal_count"], df[!, "stem"]) 
end
#==output[code]
"<svg id=window height=250 width=250><g id=axes height=250 width=250><line id=BYSl7zzR y1=250 x2=250 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line><line id=iNV2vsMQ y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line></g><g id=grid height=250 width=250><line id=gPB5I2qt y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=1></line><line id=x6fYCukc y1=1 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=93ZdYu6J y1=0 x2=63 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=63></line><line id=JLr0CvrZ y1=63 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=63 x1=0></line><line id=vzL5ihAO y1=0 x2=125 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=125></line><line id=e8l3mNjY y1=125 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=125 x1=0></line><line id=ilI8YuxG y1=0 x2=187 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=187></line><line id=cK9Qz69J y1=187 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=187 x1=0></line><line id=WGhb2SZv y1=0 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=249></line><line id=0PFgkcO7 y1=249 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=0></line></g><g id=points height=250 width=250><circle id=Ma8yVPFl cx=46 style='fill: #FF6633;' r=5 cy=116></circle><circle id=Ddct9Mj2 cx=119 style='fill: #FF6633;' r=5 cy=25></circle><circle id=qGfrjGvP cx=0 style='fill: #FF6633;' r=5 cy=22></circle><circle id=jBsT1bjn cx=20 style='fill: #FF6633;' r=5 cy=207></circle><circle id=Jc9RWjAP cx=64 style='fill: #FF6633;' r=5 cy=207></circle><circle id=DF8rXIE9 cx=73 style='fill: #FF6633;' r=5 cy=7></circle><circle id=CXzyNqQy cx=140 style='fill: #FF6633;' r=5 cy=69></circle><circle id=8gWWeqpZ cx=81 style='fill: #FF6633;' r=5 cy=89></circle><circle id=Wb1HtCQv cx=103 style='fill: #FF6633;' r=5 cy=65></circle><circle id=zD0PPIbx cx=249 style='fill: #FF6633;' r=5 cy=100></circle><circle id=QDIa9P3w cx=149 style='fill: #FF6633;' r=5 cy=196></circle><circle id=lWaQaZHO cx=77 style='fill: #FF6633;' r=5 cy=250></circle><circle id=YidQNvlL cx=141 style='fill: #FF6633;' r=5 cy=171></circle><circle id=YljngarW cx=26 style='fill: #FF6633;' r=5 cy=198></circle><circle id=oj7JP8eK cx=74 style='fill: #FF6633;' r=5 cy=178></circle><circle id=Hksbgmyz cx=93 style='fill: #FF6633;' r=5 cy=178></circle><circle id=JfETn4qv cx=43 style='fill: #FF6633;' r=5 cy=1></circle><circle id=WU9Gx9ka cx=2 style='fill: #FF6633;' r=5 cy=22></circle><circle id=lfdVCUR7 cx=78 style='fill: #FF6633;' r=5 cy=106></circle><circle id=h7l96MW5 cx=177 style='fill: #FF6633;' r=5 cy=18></circle></g><g id=labels height=250 width=250><text id=nTT7Yj35 y=240 style='fill: black;font-size: 10pt;' x=-1>-1.350</text><text id=Re0rH1lB y=-1 style='fill: black;font-size: 10pt;' x=0>1.2761</text><text id=yce6ZnFu y=240 style='fill: black;font-size: 10pt;' x=61>-0.379</text><text id=vQzgDuu6 y=61 style='fill: black;font-size: 10pt;' x=0>0.7000</text><text id=gAh3t0l0 y=240 style='fill: black;font-size: 10pt;' x=123>0.5917</text><text id=oP2sa0sc y=123 style='fill: black;font-size: 10pt;' x=0>0.1239</text><text id=ZuHE9GcS y=240 style='fill: black;font-size: 10pt;' x=185>1.5627</text><text id=OZRjjkc8 y=185 style='fill: black;font-size: 10pt;' x=0>-0.452</text><text id=50hlehI7 y=240 style='fill: black;font-size: 10pt;' x=247>2.5337</text><text id=YqxI1szT y=247 style='fill: black;font-size: 10pt;' x=0>-1.028</text></g><g id=legend><rect id=legendbg width=50 y=175 height=0 style='stroke: darkgray;fill: white;stroke-width: 2px;' x=185></rect></g></svg>"
==#
#==|||==#
figure3 = context(500, 500) do con::Context
    group(con) do plotgroup::Group
        group!(plotgroup, "axes") do g::Group
            Gattino.axes!(g)
        end
        group!(plotgroup, "grid") do g::Group
            Gattino.grid!(g, 6)
        end
        group!(plotgroup, "age") do g::Group
            Gattino.points!(g, df[!, "stem"], df[!, "age"], "fill" => "orange")
        end
        group!(plotgroup, "petal") do g::Group
            Gattino.points!(g, df[!, "stem"], df[!, "petal"], "fill" => "lightblue")
        end
    end
end
#==output[code]
"<svg id=window height=500 width=500><g id=axes height=500 width=500><line id=yL06975s y1=500 x2=500 style='fill: none;stroke: black;stroke-width: 4;' y2=500 x1=0></line><line id=eNpE1SdM y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=500 x1=0></line></g><g id=grid height=500 width=500><line id=5skNBrpn y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=1></line><line id=C7erBGXM y1=1 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=029wAZim y1=0 x2=84 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=84></line><line id=zTgx0Tsd y1=84 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=84 x1=0></line><line id=BsFvKcuA y1=0 x2=167 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=167></line><line id=hqT8iExb y1=167 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=167 x1=0></line><line id=UJ1UpMHt y1=0 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=250></line><line id=mF5hZoql y1=250 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=0></line><line id=9LObcyQn y1=0 x2=333 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=333></line><line id=5vIEOOE9 y1=333 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=333 x1=0></line><line id=cRGj0HDK y1=0 x2=416 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=416></line><line id=GN1RdbYf y1=416 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=416 x1=0></line><line id=SMwJXuHM y1=0 x2=499 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=499></line><line id=2J9UFcV9 y1=499 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=499 x1=0></line></g><g id=age height=500 width=500><circle id=11fTRT1q cx=269 style='fill: orange;' r=5 cy=315></circle><circle id=0dC5Sm45 cx=450 style='fill: orange;' r=5 cy=422></circle><circle id=1JNiTxsh cx=457 style='fill: orange;' r=5 cy=218></circle><circle id=TKiAdLzA cx=85 style='fill: orange;' r=5 cy=144></circle><circle id=gJ08SCl1 cx=85 style='fill: orange;' r=5 cy=343></circle><circle id=bqpw67hj cx=486 style='fill: orange;' r=5 cy=239></circle><circle id=F18jwAI0 cx=364 style='fill: orange;' r=5 cy=363></circle><circle id=B29v2Wth cx=323 style='fill: orange;' r=5 cy=90></circle><circle id=N5oKZB7o cx=371 style='fill: orange;' r=5 cy=361></circle><circle id=t5j0qtqj cx=300 style='fill: orange;' r=5 cy=419></circle><circle id=dTfPCjuQ cx=108 style='fill: orange;' r=5 cy=441></circle><circle id=KUW5L1kc cx=0 style='fill: orange;' r=5 cy=431></circle><circle id=pUvoxSk2 cx=157 style='fill: orange;' r=5 cy=418></circle><circle id=ATE2LfBP cx=103 style='fill: orange;' r=5 cy=317></circle><circle id=aI5KejzX cx=144 style='fill: orange;' r=5 cy=143></circle><circle id=O4Q0MCLG cx=144 style='fill: orange;' r=5 cy=351></circle><circle id=wnbbz6jc cx=499 style='fill: orange;' r=5 cy=500></circle><circle id=hvju38cz cx=456 style='fill: orange;' r=5 cy=1></circle><circle id=CZXp7XzY cx=288 style='fill: orange;' r=5 cy=15></circle><circle id=h9hiArvc cx=464 style='fill: orange;' r=5 cy=224></circle></g><g id=petal height=500 width=500><circle id=jWa4HbVm cx=269 style='fill: lightblue;' r=5 cy=343></circle><circle id=v0wmywhs cx=450 style='fill: lightblue;' r=5 cy=358></circle><circle id=9Z0mb5Z6 cx=457 style='fill: lightblue;' r=5 cy=61></circle><circle id=j9tvozQT cx=85 style='fill: lightblue;' r=5 cy=225></circle><circle id=yceAdq5B cx=85 style='fill: lightblue;' r=5 cy=266></circle><circle id=tcnPKYoN cx=486 style='fill: lightblue;' r=5 cy=1></circle><circle id=2jFfkLZJ cx=364 style='fill: lightblue;' r=5 cy=184></circle><circle id=8ljXol5O cx=323 style='fill: lightblue;' r=5 cy=184></circle><circle id=I5GYXB2u cx=371 style='fill: lightblue;' r=5 cy=309></circle><circle id=y2J4054R cx=300 style='fill: lightblue;' r=5 cy=450></circle><circle id=qzYQTBjZ cx=108 style='fill: lightblue;' r=5 cy=200></circle><circle id=nR8G7Mi3 cx=0 style='fill: lightblue;' r=5 cy=129></circle><circle id=LjmcdF0I cx=157 style='fill: lightblue;' r=5 cy=140></circle><circle id=pQbAim3m cx=103 style='fill: lightblue;' r=5 cy=62></circle><circle id=MXdD8PJO cx=144 style='fill: lightblue;' r=5 cy=185></circle><circle id=4AiZUv7J cx=144 style='fill: lightblue;' r=5 cy=500></circle><circle id=KLYYkbln cx=499 style='fill: lightblue;' r=5 cy=290></circle><circle id=JwrxFebK cx=456 style='fill: lightblue;' r=5 cy=229></circle><circle id=XG0RfZiU cx=288 style='fill: lightblue;' r=5 cy=264></circle><circle id=12D9i5Nv cx=464 style='fill: lightblue;' r=5 cy=137></circle></g></svg>"
==#
#==|||==#
layers(figure3)
#==output[code]
4-element Vector{Pair{Int64, String}}:
 1 => "axes"
 2 => "grid"
 3 => "age"
 4 => "petal"
==#
#==|||==#
style!(figure3, "axes", "stroke" => "orange")
#==output[code]

==#
#==|||==#
open_layer!(figure3, "petal") do ec
    style!(ec, df[!, "petal_count"], "stroke-width" => 5)
    style!(ec, "stroke" => "green")
end
#==output[code]

==#
#==|||==#
group!(figure3, "annotation") do g::Group
    Gattino.text!(g, 100, 100, "hello !", "stroke" => "darkblue")
end
#==output[code]

==#
#==|||==#
layers(figure1)
#==output[code]
10-element Vector{Pair{Int64, String}}:
  1 => "4A3dm4ri"
  2 => "title"
  3 => "axes"
  4 => "grid"
  5 => "age"
  6 => "petal_count"
  7 => "stem"
  8 => "labels"
  9 => "axislabels"
 10 => "legend"
==#
#==|||==#
seed_count, stem_count = randn(20), randn(20)
#==output[code]
([0.2788072653961592, 0.4693368298174372, -0.11602795181088825, -0.3228117605313473, -1.1498835476435776, 0.6800002675089138, 0.16598087398212094, 0.1249783994938224, -0.9946361707059835, 0.1023428114360304, -0.7534201208142413, -0.20420631147088045, 0.3768413884960173, -1.103750318168371, 0.3600479101166692, 0.3296241652038525, 0.12474228642524451, 1.0764487838041932, -0.04376909758929058, -0.1469101988507185], [0.5334362867829755, -1.4225092346322823, 0.6235343480954229, 0.5200137386567655, -0.6794920284510866, -0.9603646589391627, 0.1558786877378027, -0.5459030884456733, 0.9146309010357053, 0.6650100069908298, -0.42412330382012203, -0.7429419758236543, -1.2203001029161096, -1.2755129305309945, 1.1209269400519049, 0.16487343571227508, 0.15415381150758276, 2.4244193246247683, -0.4197826061818501, -0.16975431712625022])
==#
#==|||==#
w, h = Int64(round(figure1.dim[1] * .75)), Int64(round(figure1.dim[2] * .75))
ml, mt = Int64(round(figure1.dim[1] * .12)) + figure1.margin[1], Int64(figure1.dim[2] * .12) + figure1.margin[2]
#==output[code]
(60, 60)                        
==#
#==|||==#
group(figure1, w, h, ml => mt) do plotgroup::Group
    group!(plotgroup, "seed_count") do g::Group
        Gattino.points!(g, df[!, "petal"], seed_count, "fill" => "brown")
    end
end
#==output[code]

==#
#==|||==#
layers(figure1)
#==output[code]
11-element Vector{Pair{Int64, String}}:
  1 => "4A3dm4ri"
  2 => "title"
  3 => "axes"
  4 => "grid"
  5 => "age"
  6 => "petal_count"
  7 => "stem"
  8 => "labels"
  9 => "axislabels"
 10 => "legend"
 11 => "seed_count"
==#
#==|||==#
move_layer!(figure1, "seed_count", 8)
#==output[code]
11-element Vector{Pair{Int64, String}}:
  1 => "4A3dm4ri"
  2 => "title"
  3 => "axes"
  4 => "grid"
  5 => "age"
  6 => "petal_count"
  7 => "stem"
  8 => "seed_count"
  9 => "labels"
 10 => "axislabels"
 11 => "legend"
==#
#==|||==#
Gattino.append_legend!(figure1, "seed_count")
#==output[code]

==#
#==|||==#
open_layer!(figure1, "stem") do ec
    set!(ec, :r, stem_count, max = 10)
end
#==output[code]

==#
#==|||==#
color = replace(split(figure1["stem"][:children][1]["style"], " ")[2], ";" => "", "'" => "")

rcirc = Gattino.circle("stem_count", r = 2)
style!(rcirc, "fill" => color)
rcirc2 = Gattino.circle("stem_count", r = 4)
style!(rcirc2, "fill" => color)
#==output[code]
"'fill: #4D8000;'"              
==#
#==|||==#
circgroup = Gattino.ToolipsSVG.g("stem_count")
push!(circgroup, rcirc, rcirc2)
#==output[code]
2-element Vector{Vector{Toolips.Servable}}:
 [Toolips.Component{:circle}("stem_count", Dict{Any, Any}(:children => Toolips.Servable[], "style" => "'fill: #4D8000;'", :r => 2), Toolips.Servable[], "circle"), Toolips.Component{:circle}("stem_count", Dict{Any, Any}(:children => Toolips.Servable[], "style" => "'fill: #4D8000;'", :r => 4), Toolips.Servable[], "circle")]
 [Toolips.Component{:circle}("stem_count", Dict{Any, Any}(:children => Toolips.Servable[], "style" => "'fill: #4D8000;'", :r => 2), Toolips.Servable[], "circle"), Toolips.Component{:circle}("stem_count", Dict{Any, Any}(:children => Toolips.Servable[], "style" => "'fill: #4D8000;'", :r => 4), Toolips.Servable[], "circle")]
==#
#==|||==#
Gattino.append_legend!(figure1, "stem_count", circgroup)
#==output[code]

==#
#==|||==#
figs = hcat(figure2, figure3)
#==output[code]
"<div id=r2i><svg id=window height=250 style='display: inline-block;' width=250><g id=axes height=250 width=250><line id=BYSl7zzR y1=250 x2=250 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line><line id=iNV2vsMQ y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line></g><g id=grid height=250 width=250><line id=gPB5I2qt y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=1></line><line id=x6fYCukc y1=1 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=93ZdYu6J y1=0 x2=63 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=63></line><line id=JLr0CvrZ y1=63 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=63 x1=0></line><line id=vzL5ihAO y1=0 x2=125 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=125></line><line id=e8l3mNjY y1=125 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=125 x1=0></line><line id=ilI8YuxG y1=0 x2=187 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=187></line><line id=cK9Qz69J y1=187 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=187 x1=0></line><line id=WGhb2SZv y1=0 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=249></line><line id=0PFgkcO7 y1=249 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=0></line></g><g id=points height=250 width=250><circle id=Ma8yVPFl cx=46 style='fill: #FF6633;' r=5 cy=116></circle><circle id=Ddct9Mj2 cx=119 style='fill: #FF6633;' r=5 cy=25></circle><circle id=qGfrjGvP cx=0 style='fill: #FF6633;' r=5 cy=22></circle><circle id=jBsT1bjn cx=20 style='fill: #FF6633;' r=5 cy=207></circle><circle id=Jc9RWjAP cx=64 style='fill: #FF6633;' r=5 cy=207></circle><circle id=DF8rXIE9 cx=73 style='fill: #FF6633;' r=5 cy=7></circle><circle id=CXzyNqQy cx=140 style='fill: #FF6633;' r=5 cy=69></circle><circle id=8gWWeqpZ cx=81 style='fill: #FF6633;' r=5 cy=89></circle><circle id=Wb1HtCQv cx=103 style='fill: #FF6633;' r=5 cy=65></circle><circle id=zD0PPIbx cx=249 style='fill: #FF6633;' r=5 cy=100></circle><circle id=QDIa9P3w cx=149 style='fill: #FF6633;' r=5 cy=196></circle><circle id=lWaQaZHO cx=77 style='fill: #FF6633;' r=5 cy=250></circle><circle id=YidQNvlL cx=141 style='fill: #FF6633;' r=5 cy=171></circle><circle id=YljngarW cx=26 style='fill: #FF6633;' r=5 cy=198></circle><circle id=oj7JP8eK cx=74 style='fill: #FF6633;' r=5 cy=178></circle><circle id=Hksbgmyz cx=93 style='fill: #FF6633;' r=5 cy=178></circle><circle id=JfETn4qv cx=43 style='fill: #FF6633;' r=5 cy=1></circle><circle id=WU9Gx9ka cx=2 style='fill: #FF6633;' r=5 cy=22></circle><circle id=lfdVCUR7 cx=78 style='fill: #FF6633;' r=5 cy=106></circle><circle id=h7l96MW5 cx=177 style='fill: #FF6633;' r=5 cy=18></circle></g><g id=labels height=250 width=250><text id=nTT7Yj35 y=240 style='fill: black;font-size: 10pt;' x=-1>-1.350</text><text id=Re0rH1lB y=-1 style='fill: black;font-size: 10pt;' x=0>1.2761</text><text id=yce6ZnFu y=240 style='fill: black;font-size: 10pt;' x=61>-0.379</text><text id=vQzgDuu6 y=61 style='fill: black;font-size: 10pt;' x=0>0.7000</text><text id=gAh3t0l0 y=240 style='fill: black;font-size: 10pt;' x=123>0.5917</text><text id=oP2sa0sc y=123 style='fill: black;font-size: 10pt;' x=0>0.1239</text><text id=ZuHE9GcS y=240 style='fill: black;font-size: 10pt;' x=185>1.5627</text><text id=OZRjjkc8 y=185 style='fill: black;font-size: 10pt;' x=0>-0.452</text><text id=50hlehI7 y=240 style='fill: black;font-size: 10pt;' x=247>2.5337</text><text id=YqxI1szT y=247 style='fill: black;font-size: 10pt;' x=0>-1.028</text></g><g id=legend><rect id=legendbg width=50 y=175 height=0 style='stroke: darkgray;fill: white;stroke-width: 2px;' x=185></rect></g></svg><svg id=window height=500 style='display: inline-block;' width=500><g id=axes height=500 width=500><line id=yL06975s y1=500 x2=500 style='fill: none;stroke: black;stroke-width: 4;stroke: orange;' y2=500 x1=0></line><line id=eNpE1SdM y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;stroke: orange;' y2=500 x1=0></line></g><g id=grid height=500 width=500><line id=5skNBrpn y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=1></line><line id=C7erBGXM y1=1 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=029wAZim y1=0 x2=84 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=84></line><line id=zTgx0Tsd y1=84 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=84 x1=0></line><line id=BsFvKcuA y1=0 x2=167 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=167></line><line id=hqT8iExb y1=167 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=167 x1=0></line><line id=UJ1UpMHt y1=0 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=250></line><line id=mF5hZoql y1=250 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=0></line><line id=9LObcyQn y1=0 x2=333 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=333></line><line id=5vIEOOE9 y1=333 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=333 x1=0></line><line id=cRGj0HDK y1=0 x2=416 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=416></line><line id=GN1RdbYf y1=416 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=416 x1=0></line><line id=SMwJXuHM y1=0 x2=499 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=499></line><line id=2J9UFcV9 y1=499 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=499 x1=0></line></g><g id=age height=500 width=500><circle id=11fTRT1q cx=269 style='fill: orange;' r=5 cy=315></circle><circle id=0dC5Sm45 cx=450 style='fill: orange;' r=5 cy=422></circle><circle id=1JNiTxsh cx=457 style='fill: orange;' r=5 cy=218></circle><circle id=TKiAdLzA cx=85 style='fill: orange;' r=5 cy=144></circle><circle id=gJ08SCl1 cx=85 style='fill: orange;' r=5 cy=343></circle><circle id=bqpw67hj cx=486 style='fill: orange;' r=5 cy=239></circle><circle id=F18jwAI0 cx=364 style='fill: orange;' r=5 cy=363></circle><circle id=B29v2Wth cx=323 style='fill: orange;' r=5 cy=90></circle><circle id=N5oKZB7o cx=371 style='fill: orange;' r=5 cy=361></circle><circle id=t5j0qtqj cx=300 style='fill: orange;' r=5 cy=419></circle><circle id=dTfPCjuQ cx=108 style='fill: orange;' r=5 cy=441></circle><circle id=KUW5L1kc cx=0 style='fill: orange;' r=5 cy=431></circle><circle id=pUvoxSk2 cx=157 style='fill: orange;' r=5 cy=418></circle><circle id=ATE2LfBP cx=103 style='fill: orange;' r=5 cy=317></circle><circle id=aI5KejzX cx=144 style='fill: orange;' r=5 cy=143></circle><circle id=O4Q0MCLG cx=144 style='fill: orange;' r=5 cy=351></circle><circle id=wnbbz6jc cx=499 style='fill: orange;' r=5 cy=500></circle><circle id=hvju38cz cx=456 style='fill: orange;' r=5 cy=1></circle><circle id=CZXp7XzY cx=288 style='fill: orange;' r=5 cy=15></circle><circle id=h9hiArvc cx=464 style='fill: orange;' r=5 cy=224></circle></g><g id=petal height=500 width=500><circle id=jWa4HbVm cx=269 style='fill: lightblue;stroke-width: -1;stroke: green;' r=5 cy=343></circle><circle id=v0wmywhs cx=450 style='fill: lightblue;stroke-width: 1;stroke: green;' r=5 cy=358></circle><circle id=9Z0mb5Z6 cx=457 style='fill: lightblue;stroke-width: -3;stroke: green;' r=5 cy=61></circle><circle id=j9tvozQT cx=85 style='fill: lightblue;stroke-width: -2;stroke: green;' r=5 cy=225></circle><circle id=yceAdq5B cx=85 style='fill: lightblue;stroke-width: -1;stroke: green;' r=5 cy=266></circle><circle id=tcnPKYoN cx=486 style='fill: lightblue;stroke-width: 0;stroke: green;' r=5 cy=1></circle><circle id=2jFfkLZJ cx=364 style='fill: lightblue;stroke-width: 2;stroke: green;' r=5 cy=184></circle><circle id=8ljXol5O cx=323 style='fill: lightblue;stroke-width: 0;stroke: green;' r=5 cy=184></circle><circle id=I5GYXB2u cx=371 style='fill: lightblue;stroke-width: 1;stroke: green;' r=5 cy=309></circle><circle id=y2J4054R cx=300 style='fill: lightblue;stroke-width: 5;stroke: green;' r=5 cy=450></circle><circle id=qzYQTBjZ cx=108 style='fill: lightblue;stroke-width: 2;stroke: green;' r=5 cy=200></circle><circle id=nR8G7Mi3 cx=0 style='fill: lightblue;stroke-width: 0;stroke: green;' r=5 cy=129></circle><circle id=LjmcdF0I cx=157 style='fill: lightblue;stroke-width: 2;stroke: green;' r=5 cy=140></circle><circle id=pQbAim3m cx=103 style='fill: lightblue;stroke-width: -2;stroke: green;' r=5 cy=62></circle><circle id=MXdD8PJO cx=144 style='fill: lightblue;stroke-width: 0;stroke: green;' r=5 cy=185></circle><circle id=4AiZUv7J cx=144 style='fill: lightblue;stroke-width: 0;stroke: green;' r=5 cy=500></circle><circle id=KLYYkbln cx=499 style='fill: lightblue;stroke-width: -1;stroke: green;' r=5 cy=290></circle><circle id=JwrxFebK cx=456 style='fill: lightblue;stroke-width: -3;stroke: green;' r=5 cy=229></circle><circle id=XG0RfZiU cx=288 style='fill: lightblue;stroke-width: 0;stroke: green;' r=5 cy=264></circle><circle id=12D9i5Nv cx=464 style='fill: lightblue;stroke-width: 3;stroke: green;' r=5 cy=137></circle></g><g id=annotation height=500 width=500><text id=WfrL9P9f y=100 style='stroke: darkblue;' x=100>hello !</text></g></svg></div>"
==#
#==|||==#
plt = context(200, 200) do con::Context
    group!(con, "points") do g::Group
        Gattino.points!(g, [5, 10, 15], [5, 10, 15])
    end
end
plt2 = context(200, 200) do con::Context
    group!(con, "points") do g::Group
        Gattino.points!(g, [5, 10, 15], [5, 10, 15], "fill" => "blue")
    end
end
n = compose("new", plt2, plt)
#==output[code]
"<div id=new><svg id=window height=200 style='display: inline-block;' width=200><g id=points height=200 width=200><circle id=6l5rcnqy cx=0 style='fill: blue;' r=5 cy=200></circle><circle id=HYclJiXu cx=100 style='fill: blue;' r=5 cy=100></circle><circle id=qZlz2nSt cx=199 style='fill: blue;' r=5 cy=1></circle></g></svg><svg id=window height=200 style='display: inline-block;' width=200><g id=points height=200 width=200><circle id=Q07yE4zP cx=0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=200></circle><circle id=hgAHqdEF cx=100 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=100></circle><circle id=dX3u5lZg cx=199 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=1></circle></g></svg></div>"
==#
#==|||==#
gridboxes = context(500, 500) do con::Context
   
end
#==output[code]
"<svg id=window height=500 width=500></svg>"
==#
#==|||==#
gridboxes = context(500, 500) do con::Context
    group(con, 250, 250) do g::Group
        Gattino.grid!(g, 6)
    end
end
#==output[code]
"<svg id=window height=500 width=500><line id=9RcKEQsd y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=1></line><line id=eitiSFpM y1=1 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=3P2RG8i4 y1=0 x2=43 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=43></line><line id=Xr7v2ZWw y1=43 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=43 x1=0></line><line id=5Y7YiIe0 y1=0 x2=85 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=85></line><line id=YDmEOysg y1=85 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=85 x1=0></line><line id=xFIINjTD y1=0 x2=127 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=127></line><line id=kt5dFywI y1=127 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=127 x1=0></line><line id=3qLuTIyu y1=0 x2=169 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=169></line><line id=eUQYM3SQ y1=169 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=169 x1=0></line><line id=25Q44LFU y1=0 x2=211 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=211></line><line id=lduXT5g0 y1=211 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=211 x1=0></line></svg>"
==#
#==|||==#
gridboxes = context(500, 500) do con::Context
    group(con, 250, 250) do g::Group
        Gattino.grid!(g, 6, "stroke" => "darkred")
    end
    group(con, 250, 250, 250 => 0) do g::Group
        Gattino.grid!(g, 6, "stroke" => "darkgreen")
    end
    group(con, 250, 250, 0 => 250) do g::Group
        Gattino.grid!(g, 6, "stroke" => "purple")
    end
    group(con, 250, 250, 250 => 250) do g::Group
        Gattino.grid!(g, 6, "stroke" => "darkblue")
    end
end
#==output[code]
"<svg id=window height=500 width=500><line id=Z9fJgmo2 y1=0 x2=1 style='stroke: darkred;' y2=250 x1=1></line><line id=rukLgTjH y1=1 x2=250 style='stroke: darkred;' y2=1 x1=0></line><line id=E4lIHU9A y1=0 x2=43 style='stroke: darkred;' y2=250 x1=43></line><line id=XLLNhxJm y1=43 x2=250 style='stroke: darkred;' y2=43 x1=0></line><line id=LsVq52Gn y1=0 x2=85 style='stroke: darkred;' y2=250 x1=85></line><line id=h8FUDh7s y1=85 x2=250 style='stroke: darkred;' y2=85 x1=0></line><line id=WRiPexe2 y1=0 x2=127 style='stroke: darkred;' y2=250 x1=127></line><line id=1nN6u07b y1=127 x2=250 style='stroke: darkred;' y2=127 x1=0></line><line id=psK0r9Lf y1=0 x2=169 style='stroke: darkred;' y2=250 x1=169></line><line id=9WrWl9pe y1=169 x2=250 style='stroke: darkred;' y2=169 x1=0></line><line id=eWJOXMKT y1=0 x2=211 style='stroke: darkred;' y2=250 x1=211></line><line id=lYCwfzqQ y1=211 x2=250 style='stroke: darkred;' y2=211 x1=0></line><line id=PJ9DicLF y1=0 x2=251 style='stroke: darkgreen;' y2=250 x1=251></line><line id=BjdQfRft y1=1 x2=500 style='stroke: darkgreen;' y2=1 x1=250></line><line id=ZinwCm5L y1=0 x2=293 style='stroke: darkgreen;' y2=250 x1=293></line><line id=QJ9wqeIh y1=43 x2=500 style='stroke: darkgreen;' y2=43 x1=250></line><line id=0SOdRBwI y1=0 x2=335 style='stroke: darkgreen;' y2=250 x1=335></line><line id=vW1KUGq6 y1=85 x2=500 style='stroke: darkgreen;' y2=85 x1=250></line><line id=k1cBUhhE y1=0 x2=377 style='stroke: darkgreen;' y2=250 x1=377></line><line id=ddirCpva y1=127 x2=500 style='stroke: darkgreen;' y2=127 x1=250></line><line id=EkA0OsW8 y1=0 x2=419 style='stroke: darkgreen;' y2=250 x1=419></line><line id=xNYyZ718 y1=169 x2=500 style='stroke: darkgreen;' y2=169 x1=250></line><line id=DDDbjOmS y1=0 x2=461 style='stroke: darkgreen;' y2=250 x1=461></line><line id=FUyr24jn y1=211 x2=500 style='stroke: darkgreen;' y2=211 x1=250></line><line id=v0FSXvJu y1=250 x2=1 style='stroke: purple;' y2=500 x1=1></line><line id=64w0PyPr y1=251 x2=250 style='stroke: purple;' y2=251 x1=0></line><line id=UoKbCk7r y1=250 x2=43 style='stroke: purple;' y2=500 x1=43></line><line id=TU27f9OT y1=293 x2=250 style='stroke: purple;' y2=293 x1=0></line><line id=3f5j9i54 y1=250 x2=85 style='stroke: purple;' y2=500 x1=85></line><line id=d1831XRJ y1=335 x2=250 style='stroke: purple;' y2=335 x1=0></line><line id=fYFLza4A y1=250 x2=127 style='stroke: purple;' y2=500 x1=127></line><line id=0oEFth24 y1=377 x2=250 style='stroke: purple;' y2=377 x1=0></line><line id=gfTv28c0 y1=250 x2=169 style='stroke: purple;' y2=500 x1=169></line><line id=u7PM7XDE y1=419 x2=250 style='stroke: purple;' y2=419 x1=0></line><line id=zgZhmHnB y1=250 x2=211 style='stroke: purple;' y2=500 x1=211></line><line id=gQOkZApu y1=461 x2=250 style='stroke: purple;' y2=461 x1=0></line><line id=nDZ4drNy y1=250 x2=251 style='stroke: darkblue;' y2=500 x1=251></line><line id=VFTGJIbE y1=251 x2=500 style='stroke: darkblue;' y2=251 x1=250></line><line id=l8PZmWQk y1=250 x2=293 style='stroke: darkblue;' y2=500 x1=293></line><line id=q4QSZZBh y1=293 x2=500 style='stroke: darkblue;' y2=293 x1=250></line><line id=5qkM5jAh y1=250 x2=335 style='stroke: darkblue;' y2=500 x1=335></line><line id=UiYSE061 y1=335 x2=500 style='stroke: darkblue;' y2=335 x1=250></line><line id=OehtBXNw y1=250 x2=377 style='stroke: darkblue;' y2=500 x1=377></line><line id=7Sp1YdBj y1=377 x2=500 style='stroke: darkblue;' y2=377 x1=250></line><line id=1gWWhjEI y1=250 x2=419 style='stroke: darkblue;' y2=500 x1=419></line><line id=lJ6zmlA0 y1=419 x2=500 style='stroke: darkblue;' y2=419 x1=250></line><line id=kwzHTO9v y1=250 x2=461 style='stroke: darkblue;' y2=500 x1=461></line><line id=CDJtv2YK y1=461 x2=500 style='stroke: darkblue;' y2=461 x1=250></line></svg>"
==#
#==|||==#
layers(figure3)
#==output[code]
5-element Vector{Pair{Int64, String}}:
 1 => "axes"
 2 => "grid"
 3 => "age"
 4 => "petal"
 5 => "annotation"
==#
#==|||==#
reshape(figure3, "age", :star)
#==output[code]
20-element Vector{Toolips.Component{:star}}:
 Toolips.Component{:star}("11fTRT1q", Dict{Any, Any}(:np => 5, "points" => "'279.0 320.0,276.42705098312484 321.76335575687744,275.54508497187476 324.75528258147574,273.07294901687516 322.8531695488855,269.95491502812524 322.93892626146237,271.0 320.0,269.95491502812524 317.06107373853763,273.07294901687516 317.14683045111457,275.54508497187476 315.24471741852426,276.42705098312484 318.23664424312256,279.0 320.0'", :ir => 3, :children => Toolips.Servable[], :y => 320, :angle => 0.6283185307179586, :r => 5, :x => 274), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("0dC5Sm45", Dict{Any, Any}(:np => 5, "points" => "'460.0 427.0,457.42705098312484 428.76335575687744,456.54508497187476 431.75528258147574,454.07294901687516 429.8531695488855,450.95491502812524 429.93892626146237,452.0 427.0,450.95491502812524 424.06107373853763,454.07294901687516 424.14683045111457,456.54508497187476 422.24471741852426,457.42705098312484 425.23664424312256,460.0 427.0'", :ir => 3, :children => Toolips.Servable[], :y => 427, :angle => 0.6283185307179586, :r => 5, :x => 455), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("1JNiTxsh", Dict{Any, Any}(:np => 5, "points" => "'467.0 223.0,464.42705098312484 224.76335575687742,463.54508497187476 227.75528258147577,461.07294901687516 225.85316954888546,457.95491502812524 225.93892626146237,459.0 223.0,457.95491502812524 220.06107373853763,461.07294901687516 220.14683045111454,463.54508497187476 218.24471741852423,464.42705098312484 221.23664424312258,467.0 223.0'", :ir => 3, :children => Toolips.Servable[], :y => 223, :angle => 0.6283185307179586, :r => 5, :x => 462), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("TKiAdLzA", Dict{Any, Any}(:np => 5, "points" => "'95.0 149.0,92.42705098312484 150.76335575687742,91.54508497187474 153.75528258147577,89.07294901687516 151.85316954888546,85.95491502812527 151.93892626146237,87.0 149.0,85.95491502812526 146.06107373853763,89.07294901687516 146.14683045111454,91.54508497187473 144.24471741852423,92.42705098312484 147.23664424312258,95.0 149.0'", :ir => 3, :children => Toolips.Servable[], :y => 149, :angle => 0.6283185307179586, :r => 5, :x => 90), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("gJ08SCl1", Dict{Any, Any}(:np => 5, "points" => "'95.0 348.0,92.42705098312484 349.76335575687744,91.54508497187474 352.75528258147574,89.07294901687516 350.8531695488855,85.95491502812527 350.93892626146237,87.0 348.0,85.95491502812526 345.06107373853763,89.07294901687516 345.14683045111457,91.54508497187473 343.24471741852426,92.42705098312484 346.23664424312256,95.0 348.0'", :ir => 3, :children => Toolips.Servable[], :y => 348, :angle => 0.6283185307179586, :r => 5, :x => 90), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("bqpw67hj", Dict{Any, Any}(:np => 5, "points" => "'496.0 244.0,493.42705098312484 245.76335575687742,492.54508497187476 248.75528258147577,490.07294901687516 246.85316954888546,486.95491502812524 246.93892626146237,488.0 244.0,486.95491502812524 241.06107373853763,490.07294901687516 241.14683045111454,492.54508497187476 239.24471741852423,493.42705098312484 242.23664424312258,496.0 244.0'", :ir => 3, :children => Toolips.Servable[], :y => 244, :angle => 0.6283185307179586, :r => 5, :x => 491), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("F18jwAI0", Dict{Any, Any}(:np => 5, "points" => "'374.0 368.0,371.42705098312484 369.76335575687744,370.54508497187476 372.75528258147574,368.07294901687516 370.8531695488855,364.95491502812524 370.93892626146237,366.0 368.0,364.95491502812524 365.06107373853763,368.07294901687516 365.14683045111457,370.54508497187476 363.24471741852426,371.42705098312484 366.23664424312256,374.0 368.0'", :ir => 3, :children => Toolips.Servable[], :y => 368, :angle => 0.6283185307179586, :r => 5, :x => 369), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("B29v2Wth", Dict{Any, Any}(:np => 5, "points" => "'333.0 95.0,330.42705098312484 96.76335575687742,329.54508497187476 99.75528258147577,327.07294901687516 97.85316954888546,323.95491502812524 97.93892626146237,325.0 95.0,323.95491502812524 92.06107373853763,327.07294901687516 92.14683045111454,329.54508497187476 90.24471741852423,330.42705098312484 93.23664424312258,333.0 95.0'", :ir => 3, :children => Toolips.Servable[], :y => 95, :angle => 0.6283185307179586, :r => 5, :x => 328), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("N5oKZB7o", Dict{Any, Any}(:np => 5, "points" => "'381.0 366.0,378.42705098312484 367.76335575687744,377.54508497187476 370.75528258147574,375.07294901687516 368.8531695488855,371.95491502812524 368.93892626146237,373.0 366.0,371.95491502812524 363.06107373853763,375.07294901687516 363.14683045111457,377.54508497187476 361.24471741852426,378.42705098312484 364.23664424312256,381.0 366.0'", :ir => 3, :children => Toolips.Servable[], :y => 366, :angle => 0.6283185307179586, :r => 5, :x => 376), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("t5j0qtqj", Dict{Any, Any}(:np => 5, "points" => "'310.0 424.0,307.42705098312484 425.76335575687744,306.54508497187476 428.75528258147574,304.07294901687516 426.8531695488855,300.95491502812524 426.93892626146237,302.0 424.0,300.95491502812524 421.06107373853763,304.07294901687516 421.14683045111457,306.54508497187476 419.24471741852426,307.42705098312484 422.23664424312256,310.0 424.0'", :ir => 3, :children => Toolips.Servable[], :y => 424, :angle => 0.6283185307179586, :r => 5, :x => 305), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("dTfPCjuQ", Dict{Any, Any}(:np => 5, "points" => "'118.0 446.0,115.42705098312484 447.76335575687744,114.54508497187474 450.75528258147574,112.07294901687516 448.8531695488855,108.95491502812527 448.93892626146237,110.0 446.0,108.95491502812526 443.06107373853763,112.07294901687516 443.14683045111457,114.54508497187473 441.24471741852426,115.42705098312484 444.23664424312256,118.0 446.0'", :ir => 3, :children => Toolips.Servable[], :y => 446, :angle => 0.6283185307179586, :r => 5, :x => 113), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("KUW5L1kc", Dict{Any, Any}(:np => 5, "points" => "'10.0 436.0,7.427050983124842 437.76335575687744,6.545084971874737 440.75528258147574,4.072949016875158 438.8531695488855,0.9549150281252636 438.93892626146237,2.0 436.0,0.9549150281252627 433.06107373853763,4.072949016875158 433.14683045111457,6.545084971874736 431.24471741852426,7.4270509831248415 434.23664424312256,10.0 436.0'", :ir => 3, :children => Toolips.Servable[], :y => 436, :angle => 0.6283185307179586, :r => 5, :x => 5), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("pUvoxSk2", Dict{Any, Any}(:np => 5, "points" => "'167.0 423.0,164.42705098312484 424.76335575687744,163.54508497187473 427.75528258147574,161.07294901687516 425.8531695488855,157.95491502812527 425.93892626146237,159.0 423.0,157.95491502812527 420.06107373853763,161.07294901687516 420.14683045111457,163.54508497187473 418.24471741852426,164.42705098312484 421.23664424312256,167.0 423.0'", :ir => 3, :children => Toolips.Servable[], :y => 423, :angle => 0.6283185307179586, :r => 5, :x => 162), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("ATE2LfBP", Dict{Any, Any}(:np => 5, "points" => "'113.0 322.0,110.42705098312484 323.76335575687744,109.54508497187474 326.75528258147574,107.07294901687516 324.8531695488855,103.95491502812527 324.93892626146237,105.0 322.0,103.95491502812526 319.06107373853763,107.07294901687516 319.14683045111457,109.54508497187473 317.24471741852426,110.42705098312484 320.23664424312256,113.0 322.0'", :ir => 3, :children => Toolips.Servable[], :y => 322, :angle => 0.6283185307179586, :r => 5, :x => 108), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("aI5KejzX", Dict{Any, Any}(:np => 5, "points" => "'154.0 148.0,151.42705098312484 149.76335575687742,150.54508497187473 152.75528258147577,148.07294901687516 150.85316954888546,144.95491502812527 150.93892626146237,146.0 148.0,144.95491502812527 145.06107373853763,148.07294901687516 145.14683045111454,150.54508497187473 143.24471741852423,151.42705098312484 146.23664424312258,154.0 148.0'", :ir => 3, :children => Toolips.Servable[], :y => 148, :angle => 0.6283185307179586, :r => 5, :x => 149), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("O4Q0MCLG", Dict{Any, Any}(:np => 5, "points" => "'154.0 356.0,151.42705098312484 357.76335575687744,150.54508497187473 360.75528258147574,148.07294901687516 358.8531695488855,144.95491502812527 358.93892626146237,146.0 356.0,144.95491502812527 353.06107373853763,148.07294901687516 353.14683045111457,150.54508497187473 351.24471741852426,151.42705098312484 354.23664424312256,154.0 356.0'", :ir => 3, :children => Toolips.Servable[], :y => 356, :angle => 0.6283185307179586, :r => 5, :x => 149), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("wnbbz6jc", Dict{Any, Any}(:np => 5, "points" => "'509.0 505.0,506.42705098312484 506.76335575687744,505.54508497187476 509.75528258147574,503.07294901687516 507.8531695488855,499.95491502812524 507.93892626146237,501.0 505.0,499.95491502812524 502.06107373853763,503.07294901687516 502.14683045111457,505.54508497187476 500.24471741852426,506.42705098312484 503.23664424312256,509.0 505.0'", :ir => 3, :children => Toolips.Servable[], :y => 505, :angle => 0.6283185307179586, :r => 5, :x => 504), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("hvju38cz", Dict{Any, Any}(:np => 5, "points" => "'466.0 6.0,463.42705098312484 7.763355756877419,462.54508497187476 10.755282581475768,460.07294901687516 8.853169548885461,456.95491502812524 8.938926261462367,458.0 6.0,456.95491502812524 3.061073738537635,460.07294901687516 3.1468304511145395,462.54508497187476 1.2447174185242318,463.42705098312484 4.23664424312258,466.0 5.999999999999999'", :ir => 3, :children => Toolips.Servable[], :y => 6, :angle => 0.6283185307179586, :r => 5, :x => 461), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("CZXp7XzY", Dict{Any, Any}(:np => 5, "points" => "'298.0 20.0,295.42705098312484 21.76335575687742,294.54508497187476 24.755282581475768,292.07294901687516 22.85316954888546,288.95491502812524 22.938926261462367,290.0 20.0,288.95491502812524 17.061073738537637,292.07294901687516 17.14683045111454,294.54508497187476 15.244717418524232,295.42705098312484 18.23664424312258,298.0 20.0'", :ir => 3, :children => Toolips.Servable[], :y => 20, :angle => 0.6283185307179586, :r => 5, :x => 293), Toolips.Servable[], "polygon")
 Toolips.Component{:star}("h9hiArvc", Dict{Any, Any}(:np => 5, "points" => "'474.0 229.0,471.42705098312484 230.76335575687742,470.54508497187476 233.75528258147577,468.07294901687516 231.85316954888546,464.95491502812524 231.93892626146237,466.0 229.0,464.95491502812524 226.06107373853763,468.07294901687516 226.14683045111454,470.54508497187476 224.24471741852423,471.42705098312484 227.23664424312258,474.0 229.0'", :ir => 3, :children => Toolips.Servable[], :y => 229, :angle => 0.6283185307179586, :r => 5, :x => 469), Toolips.Servable[], "polygon")
==#
#==|||==#
style!(figure3, "age", "fill" => "orange", "stroke" => "black", "stroke-width" => 2px)
#==output[code]

==#
#==|||==#
Gattino.legend!(figure3, ["age"])

circpreview = Gattino.circle("radiusprev", r = 3)
style!(circpreview, "stroke" => "darkgreen", "stroke-width" => 2px, "fill" => "white")

Gattino.append_legend!(figure3, "petal count", circpreview)
#==output[code]

==#
#==|||==#
myanim = Animation("fadein", iterations = 1, length = 1.1)
#==output[code]
"<style id=fadein> @keyframes fadein {}</style>"
==#
#==|||==#
Gattino.animate!(figure3, "age", myanim)
#==output[code]
2-element Vector{Toolips.Servable}:
 Toolips.Style(".fadein-style", Dict{Any, Any}("animation-name" => "fadein", "animation-duration" => "1.1s", "animation-iteration-count" => "1"), Toolips.Servable[Toolips.Animation("fadein", Dict{Any, Any}(), Toolips.Servable[], Toolips.var"#f#122"{String}("fadein", Core.Box(Dict{Any, Any}())), 0.0, 1.1, 1)])
 Toolips.Animation("fadein", Dict{Any, Any}(), Toolips.Servable[], Toolips.var"#f#122"{String}("fadein", Core.Box(Dict{Any, Any}())), 0.0, 1.1, 1)
==#
#==|||==#
using Gattino.Toolips

main = route("/") do c::Connection
    bod = body("mainbody", align = "center")
    visheader = Toolips.h("heading", 2, text = "my gattino visualization")
    style!(visheader, "color" => "purple")
    push!(bod, visheader, figure1.window)
    write!(c, bod)
end

ws = WebServer(routes = [main])

ws.start()
#==output[code]
IOError: listen: address already in use (EADDRINUSE)
==#
#==|||==#
using GattinoInteractive
#==output[code]

==#
#==|||==#
figure2
#==output[code]
"<svg id=window height=250 style='display: inline-block;' width=250><g id=axes height=250 width=250><line id=BYSl7zzR y1=250 x2=250 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line><line id=iNV2vsMQ y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line></g><g id=grid height=250 width=250><line id=gPB5I2qt y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=1></line><line id=x6fYCukc y1=1 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=93ZdYu6J y1=0 x2=63 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=63></line><line id=JLr0CvrZ y1=63 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=63 x1=0></line><line id=vzL5ihAO y1=0 x2=125 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=125></line><line id=e8l3mNjY y1=125 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=125 x1=0></line><line id=ilI8YuxG y1=0 x2=187 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=187></line><line id=cK9Qz69J y1=187 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=187 x1=0></line><line id=WGhb2SZv y1=0 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=249></line><line id=0PFgkcO7 y1=249 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=0></line></g><g id=points height=250 width=250><circle id=Ma8yVPFl cx=46 style='fill: #FF6633;' r=5 cy=116></circle><circle id=Ddct9Mj2 cx=119 style='fill: #FF6633;' r=5 cy=25></circle><circle id=qGfrjGvP cx=0 style='fill: #FF6633;' r=5 cy=22></circle><circle id=jBsT1bjn cx=20 style='fill: #FF6633;' r=5 cy=207></circle><circle id=Jc9RWjAP cx=64 style='fill: #FF6633;' r=5 cy=207></circle><circle id=DF8rXIE9 cx=73 style='fill: #FF6633;' r=5 cy=7></circle><circle id=CXzyNqQy cx=140 style='fill: #FF6633;' r=5 cy=69></circle><circle id=8gWWeqpZ cx=81 style='fill: #FF6633;' r=5 cy=89></circle><circle id=Wb1HtCQv cx=103 style='fill: #FF6633;' r=5 cy=65></circle><circle id=zD0PPIbx cx=249 style='fill: #FF6633;' r=5 cy=100></circle><circle id=QDIa9P3w cx=149 style='fill: #FF6633;' r=5 cy=196></circle><circle id=lWaQaZHO cx=77 style='fill: #FF6633;' r=5 cy=250></circle><circle id=YidQNvlL cx=141 style='fill: #FF6633;' r=5 cy=171></circle><circle id=YljngarW cx=26 style='fill: #FF6633;' r=5 cy=198></circle><circle id=oj7JP8eK cx=74 style='fill: #FF6633;' r=5 cy=178></circle><circle id=Hksbgmyz cx=93 style='fill: #FF6633;' r=5 cy=178></circle><circle id=JfETn4qv cx=43 style='fill: #FF6633;' r=5 cy=1></circle><circle id=WU9Gx9ka cx=2 style='fill: #FF6633;' r=5 cy=22></circle><circle id=lfdVCUR7 cx=78 style='fill: #FF6633;' r=5 cy=106></circle><circle id=h7l96MW5 cx=177 style='fill: #FF6633;' r=5 cy=18></circle></g><g id=labels height=250 width=250><text id=nTT7Yj35 y=240 style='fill: black;font-size: 10pt;' x=-1>-1.350</text><text id=Re0rH1lB y=-1 style='fill: black;font-size: 10pt;' x=0>1.2761</text><text id=yce6ZnFu y=240 style='fill: black;font-size: 10pt;' x=61>-0.379</text><text id=vQzgDuu6 y=61 style='fill: black;font-size: 10pt;' x=0>0.7000</text><text id=gAh3t0l0 y=240 style='fill: black;font-size: 10pt;' x=123>0.5917</text><text id=oP2sa0sc y=123 style='fill: black;font-size: 10pt;' x=0>0.1239</text><text id=ZuHE9GcS y=240 style='fill: black;font-size: 10pt;' x=185>1.5627</text><text id=OZRjjkc8 y=185 style='fill: black;font-size: 10pt;' x=0>-0.452</text><text id=50hlehI7 y=240 style='fill: black;font-size: 10pt;' x=247>2.5337</text><text id=YqxI1szT y=247 style='fill: black;font-size: 10pt;' x=0>-1.028</text></g><g id=legend><rect id=legendbg width=50 y=175 height=0 style='stroke: darkgray;fill: white;stroke-width: 2px;' x=185></rect></g></svg>"
==#
#==|||==#
newvis = scatter(randn(20), randn(20))
style!(newvis, "points", "transition" => 10seconds)
newcontrols = controls(500, 500) do con::Controls
    changebutt = button("changebutt", text = "change")
    bind!(newvis, changebutt) do pm::PlotModifier{Context}
        GattinoInteractive.style_layer!(pm, "points", "opacity" => 0percent)
    end
    push!(con.window, changebutt)
end
nothing
#==output[code]

==#
#==|||==#
hcat(newvis, newcontrols)
#==output[code]
"<div id=XMV><svg id=window height=500 style='display: inline-block;' width=500><g id=axes height=500 width=500><line id=6i1kcqIL y1=500 x2=500 style='fill: none;stroke: black;stroke-width: 4;' y2=500 x1=0></line><line id=DhDStTfZ y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=500 x1=0></line></g><g id=grid height=500 width=500><line id=2Vs3GScx y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=1></line><line id=8UXmNrUl y1=1 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=QduDKYNa y1=0 x2=126 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=126></line><line id=uLduRsXX y1=126 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=126 x1=0></line><line id=zeJ2XirH y1=0 x2=251 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=251></line><line id=P4rs6NLH y1=251 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=251 x1=0></line><line id=ZKhQ87n8 y1=0 x2=376 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=376></line><line id=eB9a5nQc y1=376 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=376 x1=0></line></g><g id=points height=500 width=500><circle id=YJXZUw3Q cx=253 style='fill: #FF6633;transition: 10s;' r=5 cy=367></circle><circle id=TUQ9LsDv cx=234 style='fill: #FF6633;transition: 10s;' r=5 cy=285></circle><circle id=S1H0UVD1 cx=215 style='fill: #FF6633;transition: 10s;' r=5 cy=255></circle><circle id=mcCDg8Gb cx=28 style='fill: #FF6633;transition: 10s;' r=5 cy=472></circle><circle id=7SIWMODv cx=178 style='fill: #FF6633;transition: 10s;' r=5 cy=413></circle><circle id=VWFolat7 cx=348 style='fill: #FF6633;transition: 10s;' r=5 cy=354></circle><circle id=nYb8qBeB cx=13 style='fill: #FF6633;transition: 10s;' r=5 cy=393></circle><circle id=OnX1GZVF cx=300 style='fill: #FF6633;transition: 10s;' r=5 cy=319></circle><circle id=HYPyW3ZT cx=118 style='fill: #FF6633;transition: 10s;' r=5 cy=500></circle><circle id=9HCrQKse cx=199 style='fill: #FF6633;transition: 10s;' r=5 cy=397></circle><circle id=HnqzltZK cx=329 style='fill: #FF6633;transition: 10s;' r=5 cy=260></circle><circle id=4yFMR6q0 cx=254 style='fill: #FF6633;transition: 10s;' r=5 cy=361></circle><circle id=uGpMj1zC cx=0 style='fill: #FF6633;transition: 10s;' r=5 cy=490></circle><circle id=rtGXoxAA cx=383 style='fill: #FF6633;transition: 10s;' r=5 cy=109></circle><circle id=Lbsr1Kkt cx=98 style='fill: #FF6633;transition: 10s;' r=5 cy=211></circle><circle id=P3A8l9kW cx=235 style='fill: #FF6633;transition: 10s;' r=5 cy=1></circle><circle id=BDq1fy6l cx=499 style='fill: #FF6633;transition: 10s;' r=5 cy=447></circle><circle id=zOzcjDi7 cx=94 style='fill: #FF6633;transition: 10s;' r=5 cy=276></circle><circle id=nuJJCrog cx=293 style='fill: #FF6633;transition: 10s;' r=5 cy=351></circle><circle id=i9p4Hz8M cx=388 style='fill: #FF6633;transition: 10s;' r=5 cy=357></circle></g><g id=labels height=500 width=500><text id=UOgWqe4E y=490 style='fill: black;font-size: 10pt;' x=-2>-1.854</text><text id=JAvAF5Cf y=-1 style='fill: black;font-size: 10pt;' x=0>2.1886</text><text id=4a76GY8A y=490 style='fill: black;font-size: 10pt;' x=123>-0.831</text><text id=DHKALv3y y=124 style='fill: black;font-size: 10pt;' x=0>1.3233</text><text id=C9R8LMt9 y=490 style='fill: black;font-size: 10pt;' x=248>0.1914</text><text id=Xz2Qg82g y=249 style='fill: black;font-size: 10pt;' x=0>0.4580</text><text id=qR9cxFhN y=490 style='fill: black;font-size: 10pt;' x=373>1.2144</text><text id=JUnnhJIT y=374 style='fill: black;font-size: 10pt;' x=0>-0.407</text><text id=BM8HHwmd y=490 style='fill: black;font-size: 10pt;' x=498>2.2375</text><text id=YcTdobb7 y=499 style='fill: black;font-size: 10pt;' x=0>-1.272</text></g><g id=legend><rect id=legendbg width=100 y=350 height=0 style='stroke: darkgray;fill: white;stroke-width: 2px;' x=370></rect></g></svg><div id=o99HEWKd style='width: 500;height: 500;margin-left: 0;margin-right: 0;padding: 0px;vertical-align: top;display: inline-block;' height=500 width=500><button id=changebutt onclick=changebuttclick(event);>change</button><script id=changebuttclick>function changebuttclick(event){var new_element = document.getElementById('YJXZUw3Q');new_element.style['opacity'] = '0%';var new_element = document.getElementById('TUQ9LsDv');new_element.style['opacity'] = '0%';var new_element = document.getElementById('S1H0UVD1');new_element.style['opacity'] = '0%';var new_element = document.getElementById('mcCDg8Gb');new_element.style['opacity'] = '0%';var new_element = document.getElementById('7SIWMODv');new_element.style['opacity'] = '0%';var new_element = document.getElementById('VWFolat7');new_element.style['opacity'] = '0%';var new_element = document.getElementById('nYb8qBeB');new_element.style['opacity'] = '0%';var new_element = document.getElementById('OnX1GZVF');new_element.style['opacity'] = '0%';var new_element = document.getElementById('HYPyW3ZT');new_element.style['opacity'] = '0%';var new_element = document.getElementById('9HCrQKse');new_element.style['opacity'] = '0%';var new_element = document.getElementById('HnqzltZK');new_element.style['opacity'] = '0%';var new_element = document.getElementById('4yFMR6q0');new_element.style['opacity'] = '0%';var new_element = document.getElementById('uGpMj1zC');new_element.style['opacity'] = '0%';var new_element = document.getElementById('rtGXoxAA');new_element.style['opacity'] = '0%';var new_element = document.getElementById('Lbsr1Kkt');new_element.style['opacity'] = '0%';var new_element = document.getElementById('P3A8l9kW');new_element.style['opacity'] = '0%';var new_element = document.getElementById('BDq1fy6l');new_element.style['opacity'] = '0%';var new_element = document.getElementById('zOzcjDi7');new_element.style['opacity'] = '0%';var new_element = document.getElementById('nuJJCrog');new_element.style['opacity'] = '0%';var new_element = document.getElementById('i9p4Hz8M');new_element.style['opacity'] = '0%';}</script></div></div>"
==#
#==|||==#
flowers = Dict(:color => ["orange", "red", "white", "orange", "red", "pink"], 
               :petal => [10, 4, 7, 9, 5, 7], :stem => [20, 14, 16, 6, 9, 5], 
               :score => [4, 2, 6, 8, 10, 3], :n_petals => [4, 9, 4, 12, 8, 4], 
               :name => ["daisy", "rose", "lilac", "poppy", "cherry"])
#==output[code]
Dict{Symbol, Vector} with 6 entries:
  :color => ["orange", "red", "white", "orange", "red", "pink"]
  :n_petals => [4, 9, 4, 12, 8, 4]
  :petal => [10, 4, 7, 9, 5, 7]
  :name => ["daisy", "rose", "lilac", "poppy", "cherry"]
  :score => [4, 2, 6, 8, 10, 3]
  :stem => [20, 14, 16, 6, 9, 5]
==#
#==|||==#
plt = context(500, 500) do con::Context
    Gattino.scatter_plot!(con, flowers[:score], flowers[:n_petals])
    open_layer!(con, "points") do ecomp
        set!(ecomp, :r, flowers[:petal])
        style!(ecomp, "fill", flowers[:color])
        style!(ecomp[2], "transition" => 1seconds)
    end
    style!(con, "border-top-left-radius" => 8px, "border-bottom-left-radius" => 8px,
    "border" => "2px solid black", "border-right" => "1px solid gray")
end
ctrls = controls(500, 500) do ct::Controls
    fetsel = Gattino.h("selectcat", 2, text = "show feature")
    style!(fetsel, "color" => "purple", "margin-bottom" => 8px)
    push!(ct, fetsel)
    opts = options("n_petals", "stem", "petal")
    selectfeatbox = selection_box("featb", opts)
    style!(selectfeatbox, "height" => 5percent, "color" => "gray", "font-size" => 13pt, "margin-left" => 30px)
    bind!(plt, selectfeatbox) do gm::PlotModifier
         value_is!(gm, selectfeatbox, "stem") do gm2::PlotModifier
             Gattino.points!(gm2, "points", flowers[:score], flowers[:stem])
         end
         value_is!(gm, selectfeatbox, "petal") do gm2::PlotModifier
             Gattino.points!(gm2, "points", flowers[:score], flowers[:petal])
         end
         value_is!(gm, selectfeatbox, "n_petals") do gm2::PlotModifier
             Gattino.points!(gm2, "points", flowers[:score], flowers[:n_petals])
         end
    end
    push!(ct, selectfeatbox)
    style!(ct, "border-top-left-radius" => 0px, "border-bottom-left-radius" => 0px, "border" => "2px solid black", "border-left" => "none",
    "padding" => 20px)
end
compose("flowervis", plt, ctrls)
#==output[code]

==#
#==|||==#
using Gattino3D
#==output[code]

==#
#==|||==#
mycon = Gattino3D.context(500, 500, 200) do con
    Gattino3D.axes!(con)
    Gattino3D.grid!(con, 6)
    Gattino3D.points!(con, [1, 5, 10], [1, 5, 10], [1, 5, 10])
    Gattino3D.points!(con, Vector(1:10), [1, 1, 1, 1, 1, 1, 1, 1, 1, 10], [3, 1, 3, 1, 6, 1, 3, 1, 2, 10], 
    "fill" => "blue")
    Gattino3D.line!(con, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 10], [0, 1, 0, 1, 0, 1, 0, 1, 0, 10], "stroke" => "green", "fill" => "none", 
"stroke-width" => 10px)
end
#==output[code]
"<svg id=window height=500 width=500><line id=9MrYqHe5 y1=500 x2=500 style='fill: none;stroke: black;stroke-width: 4;' y2=500 x1=0></line><line id=Qx6auxVv y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=500 x1=0></line><line id=ooGFB4SI y1=500 x2=190 style='fill: none;stroke: black;stroke-width: 4;' y2=310 x1=0></line><line id=DjCIV5iR y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=1></line><line id=9BV6CXeb y1=1 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=x6i15sdt y1=499 x2=501 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=499 x1=1></line><line id=6AEGU3L1 y1=0 x2=84 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=84></line><line id=I3oQIcir y1=84 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=84 x1=0></line><line id=SRqTNb4T y1=468 x2=532 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=468 x1=32></line><line id=UqChuEJH y1=0 x2=167 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=167></line><line id=XCIlyzXL y1=167 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=167 x1=0></line><line id=EKAn6Rv9 y1=436 x2=564 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=436 x1=64></line><line id=RVppoTkM y1=0 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=250></line><line id=nBuSi9zS y1=250 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=0></line><line id=bdISkpbC y1=405 x2=595 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=405 x1=95></line><line id=duIJ9llX y1=0 x2=333 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=333></line><line id=bIGsADMx y1=333 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=333 x1=0></line><line id=3NicM3ch y1=373 x2=627 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=373 x1=127></line><line id=zyrXExWy y1=0 x2=416 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=416></line><line id=1xXUVZhA y1=416 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=416 x1=0></line><line id=qmqxDO3H y1=342 x2=658 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=342 x1=158></line><line id=NJUiPHr7 y1=0 x2=499 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=499></line><line id=Km9Z6ktB y1=499 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=499 x1=0></line><line id=JOPohJNX y1=311 x2=689 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=311 x1=189></line><circle id=F1oP1xKp cx=69.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=18.0 cy=431.0></circle><circle id=vZOu40DD cx=345.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=10.0 cy=155.0></circle><circle id=y0YvavKJ cx=690.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=0.0 cy=-190.0></circle><circle id=OSN2FeOh cx=107.0 style='fill: blue;' r=14.0 cy=393.0></circle><circle id=XAMx9VVz cx=119.0 style='fill: blue;' r=18.0 cy=431.0></circle><circle id=uX5mEgbm cx=207.0 style='fill: blue;' r=14.0 cy=393.0></circle><circle id=cpt5MYSS cx=219.0 style='fill: blue;' r=18.0 cy=431.0></circle><circle id=MmqgBnNS cx=364.0 style='fill: blue;' r=8.0 cy=336.0></circle><circle id=N2Csti84 cx=319.0 style='fill: blue;' r=18.0 cy=431.0></circle><circle id=asNkjYKX cx=407.0 style='fill: blue;' r=14.0 cy=393.0></circle><circle id=tKnInOFQ cx=419.0 style='fill: blue;' r=18.0 cy=431.0></circle><circle id=sXlKKDLc cx=488.0 style='fill: blue;' r=16.0 cy=412.0></circle><circle id=zkN1oNBU cx=690.0 style='fill: blue;' r=0.0 cy=-190.0></circle><polyline id=newline style='stroke: green;fill: none;stroke-width: 10px;' points=0&#32;150,69&#32;131,100&#32;150,169&#32;131,200&#32;150,269&#32;131,300&#32;150,369&#32;131,400&#32;150,640&#32;-40,></polyline></svg>"
==#
#==|||==#
