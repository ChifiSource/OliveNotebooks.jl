"""## gattino visualizations
Let's create our first visualizations with `Gattino`!

"""
#==|||==#

using Gattino
#==output[code]

==#
#==|||==#

myhist = Gattino.hist(["emma", "emmy", "em"], [22, 25, 14], title = "votes for names")
#==output[code]
"<svg id=window height=500 width=500><text id=8g0MlJEi y=40 style='fill: black;font-size: 15pt;' x=175>votes for names</text><g id=title height=500 width=500></g><g id=axes height=375 width=375><line id=gfnLjgga y1=435 x2=435 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line><line id=2YqzkqCx y1=60 x2=60 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line></g><g id=grid height=375 width=375><line id=HUImwUX9 y1=60 x2=61 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=61></line><line id=i31V6pLA y1=61 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=61 x1=60></line><line id=zWMEQlPy y1=60 x2=186 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=186></line><line id=dzMxMKOy y1=186 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=186 x1=60></line><line id=tG09Jq7A y1=60 x2=311 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=311></line><line id=vOuSnUOv y1=311 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=311 x1=60></line></g><g id=bars height=375 width=375><rect id=0C8mGpcX width=125 y=105 height=330 style='fill: none;stroke: black;stroke-width: 4;' x=60></rect><rect id=6SkBX7q6 width=125 y=60 height=375 style='fill: none;stroke: black;stroke-width: 4;' x=185></rect><rect id=MMWfcE06 width=125 y=225 height=210 style='fill: none;stroke: black;stroke-width: 4;' x=310></rect></g><g id=labels height=375 width=375><text id=OfmlpbtS y=300 style='fill: black;font-size: 11pt;' x=80>emma</text><text id=6LdTYz6X y=300 style='fill: black;font-size: 11pt;' x=205>emmy</text><text id=mBIaKDPq y=300 style='fill: black;font-size: 11pt;' x=330>em</text><text id=R8UAs3GX y=99 style='fill: black;font-size: 10pt;' x=79>25</text><text id=0OrsfKyy y=224 style='fill: black;font-size: 10pt;' x=79>17</text><text id=86yljdQY y=349 style='fill: black;font-size: 10pt;' x=79>9</text></g><g id=axislabels height=375 width=375></g></svg>"
==#
#==|||==#

myframe = context(500, 500) do con::Context
    group!(con, "scatter", 250, 250) do g::Group
        Gattino.scatter_plot!(g, [1, 2, 3, 4], [1, 2, 3, 4])
    end
end

#==output[code]
"<svg id=window height=500 width=500><g id=scatter height=250 width=250><g id=axes height=250 width=250><line id=DtlU1B67 y1=250 x2=250 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line><line id=EuVjyPPq y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line></g><g id=grid height=250 width=250><line id=UYUCbQvf y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=1></line><line id=JNIiypl2 y1=1 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=2vCpshsw y1=0 x2=63 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=63></line><line id=mIsXm0l0 y1=63 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=63 x1=0></line><line id=MiM04CGs y1=0 x2=125 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=125></line><line id=q7ywgkG8 y1=125 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=125 x1=0></line><line id=Lfb0xysv y1=0 x2=187 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=187></line><line id=Bl1zmuRY y1=187 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=187 x1=0></line><line id=jmRdBT17 y1=0 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=249></line><line id=Nexj2K7N y1=249 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=0></line></g><g id=points height=250 width=250><circle id=Npyf5Wp3 cx=62.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=187.5></circle><circle id=3japGXaP cx=125.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=125.0></circle><circle id=fNiujD2P cx=187.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=62.5></circle><circle id=uUNfZxsE cx=250.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=0.0></circle></g><g id=labels height=250 width=250><text id=HibB5is8 y=240 style='fill: black;font-size: 10pt;' x=1>0</text><text id=KCduhkW4 y=1 style='fill: black;font-size: 10pt;' x=0>4</text><text id=DikgZ9PB y=240 style='fill: black;font-size: 10pt;' x=63>1.0</text><text id=RzF6iTyY y=63 style='fill: black;font-size: 10pt;' x=0>3.0</text><text id=MNyiBgYE y=240 style='fill: black;font-size: 10pt;' x=125>2.0</text><text id=rk5znwM3 y=125 style='fill: black;font-size: 10pt;' x=0>2.0</text><text id=w0cW25me y=240 style='fill: black;font-size: 10pt;' x=187>3.0</text><text id=Zwbu2fCt y=187 style='fill: black;font-size: 10pt;' x=0>1.0</text><text id=QjkqVm1D y=240 style='fill: black;font-size: 10pt;' x=249>4.0</text><text id=P2UtWuTE y=249 style='fill: black;font-size: 10pt;' x=0>0.0</text></g><g id=axislabels height=250 width=250></g></g></svg>"
==#
#==|||==#

mycon = context(500, 500) do con::Context
    group(con, 500, 250) do gridbox::Group
        group!(gridbox, "grid") do g::Group
            Gattino.grid!(g, 4)
        end
    end
    group(con, 500, 250, 0 => 250) do otherbox::Group
        group!(otherbox, "grid2") do g::Group
            Gattino.grid!(g, 4, "stroke" => "pink")
            
        end
    end
    Gattino.text!(con, 230, 250, "hello!")
end

#==output[code]
"<svg id=window height=500 width=500><g id=grid height=250 width=500><line id=I8tMGIxO y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=1></line><line id=PAtI5vUz y1=1 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=NkLEuElk y1=0 x2=126 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=126></line><line id=BjZ0rVAr y1=63 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=63 x1=0></line><line id=esxFHvR1 y1=0 x2=251 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=251></line><line id=D4TYqTTD y1=125 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=125 x1=0></line><line id=VHiEx69g y1=0 x2=376 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=376></line><line id=AedLKiVw y1=187 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=187 x1=0></line></g><g id=grid2 height=250 width=500><line id=HYgTIs0M y1=250 x2=1 style='stroke: pink;' y2=500 x1=1></line><line id=OtaXXeVo y1=251 x2=500 style='stroke: pink;' y2=251 x1=0></line><line id=qDMZMkGR y1=250 x2=126 style='stroke: pink;' y2=500 x1=126></line><line id=ueOgglk7 y1=313 x2=500 style='stroke: pink;' y2=313 x1=0></line><line id=ouY7kX7J y1=250 x2=251 style='stroke: pink;' y2=500 x1=251></line><line id=C5H8Xz1a y1=375 x2=500 style='stroke: pink;' y2=375 x1=0></line><line id=iP0yppvl y1=250 x2=376 style='stroke: pink;' y2=500 x1=376></line><line id=TCPTTzVX y1=437 x2=500 style='stroke: pink;' y2=437 x1=0></line></g><text id=Hi0IpaTB y=250 style='fill: black;font-size: 13pt;' x=230>hello!</text></svg>"
==#
#==|||==#

layers(mycon)
#==output[code]
3-element Vector{Pair{Int64, String}}:
 1 => "grid"
 2 => "grid2"
 3 => "Hi0IpaTB"
==#
#==|||==#

myframe = context(500, 250) do con::Context
    group(con, 250, 250) do g::Group
        Gattino.scatter_plot!(g, [1, 2, 3, 4], [1, 2, 3, 4])
    end
end

#==output[code]
"<svg id=window height=250 width=500><g id=axes height=250 width=250><line id=J4Bm8dOE y1=250 x2=250 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line><line id=3hLOothG y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line></g><g id=grid height=250 width=250><line id=44KflSuO y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=1></line><line id=TFSyK63V y1=1 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=ttuJgeEc y1=0 x2=63 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=63></line><line id=nDXQyUOq y1=63 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=63 x1=0></line><line id=VSvVGkKG y1=0 x2=125 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=125></line><line id=1xS459lD y1=125 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=125 x1=0></line><line id=mu4FBUuw y1=0 x2=187 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=187></line><line id=nqanSsy5 y1=187 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=187 x1=0></line><line id=VvUjmQ3E y1=0 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=249></line><line id=Ktlzwz9w y1=249 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=0></line></g><g id=points height=250 width=250><circle id=Sgz7Ur0h cx=62.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=187.5></circle><circle id=WbP2PdMN cx=125.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=125.0></circle><circle id=VCKd7bI0 cx=187.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=62.5></circle><circle id=S5Wrs03K cx=250.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=0.0></circle></g><g id=labels height=250 width=250><text id=WC87brCd y=240 style='fill: black;font-size: 10pt;' x=1>0</text><text id=DTmCr1tm y=1 style='fill: black;font-size: 10pt;' x=0>4</text><text id=1DeILP1U y=240 style='fill: black;font-size: 10pt;' x=63>1.0</text><text id=ffL7BNkj y=63 style='fill: black;font-size: 10pt;' x=0>3.0</text><text id=1d6fuSty y=240 style='fill: black;font-size: 10pt;' x=125>2.0</text><text id=BuJYixap y=125 style='fill: black;font-size: 10pt;' x=0>2.0</text><text id=bhfLRUpG y=240 style='fill: black;font-size: 10pt;' x=187>3.0</text><text id=HkLeosCK y=187 style='fill: black;font-size: 10pt;' x=0>1.0</text><text id=eyYkGhlm y=240 style='fill: black;font-size: 10pt;' x=249>4.0</text><text id=oz0uIbIC y=249 style='fill: black;font-size: 10pt;' x=0>0.0</text></g><g id=axislabels height=250 width=250></g></svg>"
==#
#==|||==#

group(myframe, 250, 250, 250 => 0) do g::Group
    Gattino.grid!(g, 4, "stroke" => "pink")
end

#==output[code]

==#
#==|||==#

myframe
#==output[code]
"<svg id=window height=250 width=500><g id=axes height=250 width=250><line id=J4Bm8dOE y1=250 x2=250 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line><line id=3hLOothG y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line></g><g id=grid height=250 width=250><line id=44KflSuO y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=1></line><line id=TFSyK63V y1=1 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=ttuJgeEc y1=0 x2=63 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=63></line><line id=nDXQyUOq y1=63 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=63 x1=0></line><line id=VSvVGkKG y1=0 x2=125 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=125></line><line id=1xS459lD y1=125 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=125 x1=0></line><line id=mu4FBUuw y1=0 x2=187 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=187></line><line id=nqanSsy5 y1=187 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=187 x1=0></line><line id=VvUjmQ3E y1=0 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=249></line><line id=Ktlzwz9w y1=249 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=0></line></g><g id=points height=250 width=250><circle id=Sgz7Ur0h cx=62.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=187.5></circle><circle id=WbP2PdMN cx=125.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=125.0></circle><circle id=VCKd7bI0 cx=187.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=62.5></circle><circle id=S5Wrs03K cx=250.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=0.0></circle></g><g id=labels height=250 width=250><text id=WC87brCd y=240 style='fill: black;font-size: 10pt;' x=1>0</text><text id=DTmCr1tm y=1 style='fill: black;font-size: 10pt;' x=0>4</text><text id=1DeILP1U y=240 style='fill: black;font-size: 10pt;' x=63>1.0</text><text id=ffL7BNkj y=63 style='fill: black;font-size: 10pt;' x=0>3.0</text><text id=1d6fuSty y=240 style='fill: black;font-size: 10pt;' x=125>2.0</text><text id=BuJYixap y=125 style='fill: black;font-size: 10pt;' x=0>2.0</text><text id=bhfLRUpG y=240 style='fill: black;font-size: 10pt;' x=187>3.0</text><text id=HkLeosCK y=187 style='fill: black;font-size: 10pt;' x=0>1.0</text><text id=eyYkGhlm y=240 style='fill: black;font-size: 10pt;' x=249>4.0</text><text id=oz0uIbIC y=249 style='fill: black;font-size: 10pt;' x=0>0.0</text></g><g id=axislabels height=250 width=250></g><line id=qBSPBrfK y1=0 x2=251 style='stroke: pink;' y2=250 x1=251></line><line id=d9Ohc3rO y1=1 x2=500 style='stroke: pink;' y2=1 x1=250></line><line id=3lapJsYy y1=0 x2=313 style='stroke: pink;' y2=250 x1=313></line><line id=CYIddite y1=63 x2=500 style='stroke: pink;' y2=63 x1=250></line><line id=vYlrn5T9 y1=0 x2=375 style='stroke: pink;' y2=250 x1=375></line><line id=UzUO3OX4 y1=125 x2=500 style='stroke: pink;' y2=125 x1=250></line><line id=mBA7xwkL y1=0 x2=437 style='stroke: pink;' y2=250 x1=437></line><line id=UULpTGop y1=187 x2=500 style='stroke: pink;' y2=187 x1=250></line><line id=Qo2UBp8N y1=0 x2=499 style='stroke: pink;' y2=250 x1=499></line><line id=pYTFTFfZ y1=249 x2=500 style='stroke: pink;' y2=249 x1=250></line></svg>"
==#
#==|||==#
"""
#### styling a layer
Our visualizations look **ugly** with the default `Gattino` styles -- so let's change them!


"""
#==|||==#

layers(myhist)
#==output[code]
7-element Vector{Pair{Int64, String}}:
 1 => "8g0MlJEi"
 2 => "title"
 3 => "axes"
 4 => "grid"
 5 => "bars"
 6 => "labels"
 7 => "axislabels"
==#
#==|||==#

style!(myhist, "bars", "fill" => "orange", "opacity" => 70percent)
style!(myhist, "labels", "stroke-width" => 0px, "fill" => "white", "font-weight" => "bold")

#==output[code]

==#
#==|||==#

myhist
#==output[code]
"<svg id=window height=500 width=500><text id=8g0MlJEi y=40 style='fill: black;font-size: 15pt;' x=175>votes for names</text><g id=title height=500 width=500></g><g id=axes height=375 width=375><line id=gfnLjgga y1=435 x2=435 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line><line id=2YqzkqCx y1=60 x2=60 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line></g><g id=grid height=375 width=375><line id=HUImwUX9 y1=60 x2=61 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=61></line><line id=i31V6pLA y1=61 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=61 x1=60></line><line id=zWMEQlPy y1=60 x2=186 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=186></line><line id=dzMxMKOy y1=186 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=186 x1=60></line><line id=tG09Jq7A y1=60 x2=311 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=311></line><line id=vOuSnUOv y1=311 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=311 x1=60></line></g><g id=bars height=375 width=375><rect id=0C8mGpcX width=125 y=105 height=330 style='fill: none;stroke: black;stroke-width: 4;fill: orange;opacity: 70%;' x=60></rect><rect id=6SkBX7q6 width=125 y=60 height=375 style='fill: none;stroke: black;stroke-width: 4;fill: orange;opacity: 70%;' x=185></rect><rect id=MMWfcE06 width=125 y=225 height=210 style='fill: none;stroke: black;stroke-width: 4;fill: orange;opacity: 70%;' x=310></rect></g><g id=labels height=375 width=375><text id=OfmlpbtS y=300 style='fill: black;font-size: 11pt;stroke-width: 0px;fill: white;font-weight: bold;' x=80>emma</text><text id=6LdTYz6X y=300 style='fill: black;font-size: 11pt;stroke-width: 0px;fill: white;font-weight: bold;' x=205>emmy</text><text id=mBIaKDPq y=300 style='fill: black;font-size: 11pt;stroke-width: 0px;fill: white;font-weight: bold;' x=330>em</text><text id=R8UAs3GX y=99 style='fill: black;font-size: 10pt;stroke-width: 0px;fill: white;font-weight: bold;' x=79>25</text><text id=0OrsfKyy y=224 style='fill: black;font-size: 10pt;stroke-width: 0px;fill: white;font-weight: bold;' x=79>17</text><text id=86yljdQY y=349 style='fill: black;font-size: 10pt;stroke-width: 0px;fill: white;font-weight: bold;' x=79>9</text></g><g id=axislabels height=375 width=375></g></svg>"
==#
#==|||==#
"""##### layouts

With `Gattino`, we have two different ways to make layouts; we can use `compose`, along with `vcat` and `hcat`, or use `Context` sizes to scale our elements.
"""
#==|||==#
myframe = context(500, 250) do con::Context
    group(con, 250, 250) do g::Group
        Gattino.scatter_plot!(g, [1, 2, 3, 4], [1, 2, 3, 4])
    end
end

#==output[code]
"<svg id=window height=250 width=500><g id=axes height=250 width=250><line id=s1VGG26Y y1=250 x2=250 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line><line id=MgxutcIo y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line></g><g id=grid height=250 width=250><line id=WskVuTkz y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=1></line><line id=IDTI5fW6 y1=1 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=DawTDKTl y1=0 x2=63 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=63></line><line id=PJ06sRnC y1=63 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=63 x1=0></line><line id=Thl80gAp y1=0 x2=125 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=125></line><line id=I049ngLW y1=125 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=125 x1=0></line><line id=nAFNfZTg y1=0 x2=187 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=187></line><line id=o4b012aO y1=187 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=187 x1=0></line><line id=joXlDRM1 y1=0 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=249></line><line id=D2r09QZS y1=249 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=0></line></g><g id=points height=250 width=250><circle id=ofivXxrD cx=62.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=187.5></circle><circle id=eO3jJ3as cx=125.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=125.0></circle><circle id=3sVj150g cx=187.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=62.5></circle><circle id=I6BXllj6 cx=250.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=0.0></circle></g><g id=labels height=250 width=250><text id=XCWFCtyP y=240 style='fill: black;font-size: 10pt;' x=1>0</text><text id=Q9cKHNnV y=1 style='fill: black;font-size: 10pt;' x=0>4</text><text id=Q07giGVz y=240 style='fill: black;font-size: 10pt;' x=63>1.0</text><text id=AUstuiL7 y=63 style='fill: black;font-size: 10pt;' x=0>3.0</text><text id=Zb3VkZ4a y=240 style='fill: black;font-size: 10pt;' x=125>2.0</text><text id=4uUg6akC y=125 style='fill: black;font-size: 10pt;' x=0>2.0</text><text id=DDycHnJ1 y=240 style='fill: black;font-size: 10pt;' x=187>3.0</text><text id=jM3Jy4sq y=187 style='fill: black;font-size: 10pt;' x=0>1.0</text><text id=NEqAjft3 y=240 style='fill: black;font-size: 10pt;' x=249>4.0</text><text id=7ug2GmeI y=249 style='fill: black;font-size: 10pt;' x=0>0.0</text></g><g id=axislabels height=250 width=250></g></svg>"
==#
#==|||==#
group(myframe, 250, 250, 250 => 0) do g::Group
    Gattino.grid!(g, 4, "stroke" => "pink")
end

#==output[code]

==#
#==|||==#
myframe
#==output[code]
"<svg id=window height=250 width=500><g id=axes height=250 width=250><line id=s1VGG26Y y1=250 x2=250 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line><line id=MgxutcIo y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line></g><g id=grid height=250 width=250><line id=WskVuTkz y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=1></line><line id=IDTI5fW6 y1=1 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=DawTDKTl y1=0 x2=63 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=63></line><line id=PJ06sRnC y1=63 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=63 x1=0></line><line id=Thl80gAp y1=0 x2=125 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=125></line><line id=I049ngLW y1=125 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=125 x1=0></line><line id=nAFNfZTg y1=0 x2=187 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=187></line><line id=o4b012aO y1=187 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=187 x1=0></line><line id=joXlDRM1 y1=0 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=249></line><line id=D2r09QZS y1=249 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=0></line></g><g id=points height=250 width=250><circle id=ofivXxrD cx=62.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=187.5></circle><circle id=eO3jJ3as cx=125.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=125.0></circle><circle id=3sVj150g cx=187.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=62.5></circle><circle id=I6BXllj6 cx=250.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=0.0></circle></g><g id=labels height=250 width=250><text id=XCWFCtyP y=240 style='fill: black;font-size: 10pt;' x=1>0</text><text id=Q9cKHNnV y=1 style='fill: black;font-size: 10pt;' x=0>4</text><text id=Q07giGVz y=240 style='fill: black;font-size: 10pt;' x=63>1.0</text><text id=AUstuiL7 y=63 style='fill: black;font-size: 10pt;' x=0>3.0</text><text id=Zb3VkZ4a y=240 style='fill: black;font-size: 10pt;' x=125>2.0</text><text id=4uUg6akC y=125 style='fill: black;font-size: 10pt;' x=0>2.0</text><text id=DDycHnJ1 y=240 style='fill: black;font-size: 10pt;' x=187>3.0</text><text id=jM3Jy4sq y=187 style='fill: black;font-size: 10pt;' x=0>1.0</text><text id=NEqAjft3 y=240 style='fill: black;font-size: 10pt;' x=249>4.0</text><text id=7ug2GmeI y=249 style='fill: black;font-size: 10pt;' x=0>0.0</text></g><g id=axislabels height=250 width=250></g><line id=TMbZleY0 y1=0 x2=251 style='stroke: pink;' y2=250 x1=251></line><line id=lafpjS6o y1=1 x2=500 style='stroke: pink;' y2=1 x1=250></line><line id=IOKCaxck y1=0 x2=313 style='stroke: pink;' y2=250 x1=313></line><line id=hPu3PJMB y1=63 x2=500 style='stroke: pink;' y2=63 x1=250></line><line id=0YHZKZHu y1=0 x2=375 style='stroke: pink;' y2=250 x1=375></line><line id=prwVfT7J y1=125 x2=500 style='stroke: pink;' y2=125 x1=250></line><line id=NfQ2FoYx y1=0 x2=437 style='stroke: pink;' y2=250 x1=437></line><line id=NBcQTeXG y1=187 x2=500 style='stroke: pink;' y2=187 x1=250></line><line id=zas0aeP7 y1=0 x2=499 style='stroke: pink;' y2=250 x1=499></line><line id=xnOBJgVD y1=249 x2=500 style='stroke: pink;' y2=249 x1=250></line></svg>"
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
"<div id=new><svg id=window height=200 style='display: inline-block;' width=200><g id=points height=200 width=200><circle id=QW6FmsOb cx=66.66666666666666 style='fill: blue;' r=5 cy=133.33333333333334></circle><circle id=DIi6838L cx=133.33333333333331 style='fill: blue;' r=5 cy=66.66666666666669></circle><circle id=rx3Jluxi cx=200.0 style='fill: blue;' r=5 cy=0.0></circle></g></svg><svg id=window height=200 style='display: inline-block;' width=200><g id=points height=200 width=200><circle id=RYpHpBU6 cx=66.66666666666666 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=133.33333333333334></circle><circle id=zJTYIsbo cx=133.33333333333331 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=66.66666666666669></circle><circle id=GsrtnoDZ cx=200.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=0.0></circle></g></svg></div>"
==#
#==|||==#
vcat(n, myframe)
#==output[code]
"<div id=new><svg id=window height=200 style='display: inline-block;' width=200><g id=points height=200 width=200><circle id=QW6FmsOb cx=66.66666666666666 style='fill: blue;' r=5 cy=133.33333333333334></circle><circle id=DIi6838L cx=133.33333333333331 style='fill: blue;' r=5 cy=66.66666666666669></circle><circle id=rx3Jluxi cx=200.0 style='fill: blue;' r=5 cy=0.0></circle></g></svg><svg id=window height=200 style='display: inline-block;' width=200><g id=points height=200 width=200><circle id=RYpHpBU6 cx=66.66666666666666 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=133.33333333333334></circle><circle id=zJTYIsbo cx=133.33333333333331 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=66.66666666666669></circle><circle id=GsrtnoDZ cx=200.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=0.0></circle></g></svg><br id= ></br><svg id=window height=250 style='display: inline-block;' width=500><g id=axes height=250 width=250><line id=s1VGG26Y y1=250 x2=250 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line><line id=MgxutcIo y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line></g><g id=grid height=250 width=250><line id=WskVuTkz y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=1></line><line id=IDTI5fW6 y1=1 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=DawTDKTl y1=0 x2=63 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=63></line><line id=PJ06sRnC y1=63 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=63 x1=0></line><line id=Thl80gAp y1=0 x2=125 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=125></line><line id=I049ngLW y1=125 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=125 x1=0></line><line id=nAFNfZTg y1=0 x2=187 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=187></line><line id=o4b012aO y1=187 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=187 x1=0></line><line id=joXlDRM1 y1=0 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=249></line><line id=D2r09QZS y1=249 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=0></line></g><g id=points height=250 width=250><circle id=ofivXxrD cx=62.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=187.5></circle><circle id=eO3jJ3as cx=125.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=125.0></circle><circle id=3sVj150g cx=187.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=62.5></circle><circle id=I6BXllj6 cx=250.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=0.0></circle></g><g id=labels height=250 width=250><text id=XCWFCtyP y=240 style='fill: black;font-size: 10pt;' x=1>0</text><text id=Q9cKHNnV y=1 style='fill: black;font-size: 10pt;' x=0>4</text><text id=Q07giGVz y=240 style='fill: black;font-size: 10pt;' x=63>1.0</text><text id=AUstuiL7 y=63 style='fill: black;font-size: 10pt;' x=0>3.0</text><text id=Zb3VkZ4a y=240 style='fill: black;font-size: 10pt;' x=125>2.0</text><text id=4uUg6akC y=125 style='fill: black;font-size: 10pt;' x=0>2.0</text><text id=DDycHnJ1 y=240 style='fill: black;font-size: 10pt;' x=187>3.0</text><text id=jM3Jy4sq y=187 style='fill: black;font-size: 10pt;' x=0>1.0</text><text id=NEqAjft3 y=240 style='fill: black;font-size: 10pt;' x=249>4.0</text><text id=7ug2GmeI y=249 style='fill: black;font-size: 10pt;' x=0>0.0</text></g><g id=axislabels height=250 width=250></g><line id=TMbZleY0 y1=0 x2=251 style='stroke: pink;' y2=250 x1=251></line><line id=lafpjS6o y1=1 x2=500 style='stroke: pink;' y2=1 x1=250></line><line id=IOKCaxck y1=0 x2=313 style='stroke: pink;' y2=250 x1=313></line><line id=hPu3PJMB y1=63 x2=500 style='stroke: pink;' y2=63 x1=250></line><line id=0YHZKZHu y1=0 x2=375 style='stroke: pink;' y2=250 x1=375></line><line id=prwVfT7J y1=125 x2=500 style='stroke: pink;' y2=125 x1=250></line><line id=NfQ2FoYx y1=0 x2=437 style='stroke: pink;' y2=250 x1=437></line><line id=NBcQTeXG y1=187 x2=500 style='stroke: pink;' y2=187 x1=250></line><line id=zas0aeP7 y1=0 x2=499 style='stroke: pink;' y2=250 x1=499></line><line id=xnOBJgVD y1=249 x2=500 style='stroke: pink;' y2=249 x1=250></line></svg></div>"
==#
#==|||==#
