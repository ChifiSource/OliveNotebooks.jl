using Gattino
#==output[code]

==#
#==|||==#
x = ["purple", "pink", "orange", "blue", "red", "white"]
y = [20, 40, 2, 3, 25, 49]

#==output[code]
6-element Vector{Int64}:
 20
 40
  2
  3
 25
 49
==#
#==|||==#
mycon = context(500, 500) do con::Context
    group(con, 250, 250) do firstvis::Group
        group!(firstvis, "axes") do g::Group
            Gattino.axes!(g)
        end
        group!(firstvis, "grid") do g::Group
            Gattino.grid!(g, 4)
        end
        group!(firstvis, "bars") do g::Group
            Gattino.bars!(g, x, y, "stroke-width" => 1px, "stroke" => "darkgray")
            [style!(comp, "fill" => color) for (comp, color) in zip(g.window[:children], x)]
        end
        group!(firstvis, "labels") do g::Group
            Gattino.barlabels!(g, x, "stroke-width" => 0px, "font-size" => 11pt)
        end
    end
    group(con, 250, 250, 250 => 0) do secondvis::Group
        group!(secondvis, "grid2") do g::Group
            Gattino.grid!(g, 4, "stroke" => "pink")
        end
        group!(secondvis, "line") do g::Group
            Gattino.line!(g, x, y)
        end
        group!(secondvis, "labels") do g::Group
            Gattino.gridlabels!(g, x, y, 4)
        end
    end
    group(con, 500, 250, 0 => 250) do bottomvis::Group
        group!(bottomvis, "grid3") do g::Group
            Gattino.scatter_plot!(g, [1, 2, 3], [1, 2, 3])
        end
    end
end

#==output[code]
"<svg id=window height=500 width=500><g id=axes height=250 width=250><line id=XX9kVfuP y1=250 x2=250 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line><line id=rPzYpV9Y y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line></g><g id=grid height=250 width=250><line id=XpB31QYV y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=1></line><line id=poTyy3Ny y1=1 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=CrJWoooj y1=0 x2=63 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=63></line><line id=kIp76E1m y1=63 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=63 x1=0></line><line id=X7uWl1HU y1=0 x2=125 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=125></line><line id=jINRbRuh y1=125 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=125 x1=0></line><line id=Yk0b31tx y1=0 x2=187 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=187></line><line id=Ym0fooHq y1=187 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=187 x1=0></line><line id=5zJOD4Zb y1=0 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=249></line><line id=okiEjN4e y1=249 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=0></line></g><g id=bars height=250 width=250><rect id=2EgElAwV width=42 y=148 height=102 style='stroke-width: 1px;stroke: darkgray;fill: purple;' x=0></rect><rect id=mOLAZg4v width=42 y=46 height=204 style='stroke-width: 1px;stroke: darkgray;fill: pink;' x=42></rect><rect id=JYzNeK0O width=42 y=240 height=10 style='stroke-width: 1px;stroke: darkgray;fill: orange;' x=84></rect><rect id=VtW1D3ap width=42 y=235 height=15 style='stroke-width: 1px;stroke: darkgray;fill: blue;' x=126></rect><rect id=stEr4GcI width=42 y=122 height=128 style='stroke-width: 1px;stroke: darkgray;fill: red;' x=168></rect><rect id=3vM6qZP9 width=42 y=0 height=250 style='stroke-width: 1px;stroke: darkgray;fill: white;' x=210></rect></g><g id=labels height=250 width=250><text id=CbLuT8gq y=200 style='stroke-width: 0px;font-size: 11pt;' x=7>purple</text><text id=aR6kVH8S y=200 style='stroke-width: 0px;font-size: 11pt;' x=49>pink</text><text id=iGWWLuvh y=200 style='stroke-width: 0px;font-size: 11pt;' x=91>orange</text><text id=FevRBi9J y=200 style='stroke-width: 0px;font-size: 11pt;' x=133>blue</text><text id=qP5mAkEo y=200 style='stroke-width: 0px;font-size: 11pt;' x=175>red</text><text id=bxQUJ4Hu y=200 style='stroke-width: 0px;font-size: 11pt;' x=217>white</text></g><g id=grid2 height=250 width=250><line id=9egTnFJY y1=0 x2=251 style='stroke: pink;' y2=250 x1=251></line><line id=JF84jmaF y1=1 x2=500 style='stroke: pink;' y2=1 x1=250></line><line id=t8yICDrg y1=0 x2=313 style='stroke: pink;' y2=250 x1=313></line><line id=qcUMOG9c y1=63 x2=500 style='stroke: pink;' y2=63 x1=250></line><line id=0pJYdmz1 y1=0 x2=375 style='stroke: pink;' y2=250 x1=375></line><line id=6MoD4zft y1=125 x2=500 style='stroke: pink;' y2=125 x1=250></line><line id=xyrNoYkG y1=0 x2=437 style='stroke: pink;' y2=250 x1=437></line><line id=5iXRzRZh y1=187 x2=500 style='stroke: pink;' y2=187 x1=250></line><line id=H66PSrrp y1=0 x2=499 style='stroke: pink;' y2=250 x1=499></line><line id=aSXO0kHb y1=249 x2=500 style='stroke: pink;' y2=249 x1=250></line></g><g id=line height=250 width=250><polyline id=newline style='fill: none;stroke: black;stroke-width: 4;' points=292&#32;148,333&#32;46,375&#32;240,417&#32;235,458&#32;122,500&#32;0,></polyline></g><g id=labels height=250 width=250><text id=3yhK47My y=240 style='fill: black;font-size: 10pt;' x=266>purple</text><text id=6bZ58wVv y=-5 style='fill: black;font-size: 10pt;' x=250>49</text><text id=JdRWbeup y=240 style='fill: black;font-size: 10pt;' x=328>pink</text><text id=vhN5EiR9 y=57 style='fill: black;font-size: 10pt;' x=250>37.0</text><text id=frdj42P4 y=240 style='fill: black;font-size: 10pt;' x=390>orange</text><text id=WWitondD y=119 style='fill: black;font-size: 10pt;' x=250>25.0</text><text id=JdXik4l5 y=240 style='fill: black;font-size: 10pt;' x=452>blue</text><text id=iNtvdU5y y=181 style='fill: black;font-size: 10pt;' x=250>13.0</text></g><g id=grid3 height=250 width=500><g id=axes height=250 width=500><line id=ApmQRO1G y1=500 x2=500 style='fill: none;stroke: black;stroke-width: 4;' y2=500 x1=0></line><line id=mmD7mKvE y1=250 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=500 x1=0></line></g><g id=grid height=250 width=500><line id=vF76zWxA y1=250 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=1></line><line id=HGzHnCND y1=251 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=251 x1=0></line><line id=sU533DWL y1=250 x2=126 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=126></line><line id=fvgstRNW y1=313 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=313 x1=0></line><line id=NbOSbC0C y1=250 x2=251 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=251></line><line id=YWLdgIb4 y1=375 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=375 x1=0></line><line id=C1fxp8hJ y1=250 x2=376 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=376></line><line id=QonR7SWe y1=437 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=437 x1=0></line></g><g id=points height=250 width=500><circle id=MsctDHa5 cx=166.66666666666666 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=416.6666666666667></circle><circle id=EilwHq4G cx=333.3333333333333 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=333.33333333333337></circle><circle id=8Vq7EtkC cx=500.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=250.0></circle></g><g id=labels height=250 width=500><text id=jBnEsJDt y=490 style='fill: black;font-size: 10pt;' x=1>0</text><text id=5XWzJ4Yk y=251 style='fill: black;font-size: 10pt;' x=0>3</text><text id=bGFSCW1j y=490 style='fill: black;font-size: 10pt;' x=126>1.0</text><text id=jlqfmgfH y=313 style='fill: black;font-size: 10pt;' x=0>2.0</text><text id=FYkRIbpz y=490 style='fill: black;font-size: 10pt;' x=251>2.0</text><text id=XalhpJI9 y=375 style='fill: black;font-size: 10pt;' x=0>1.0</text><text id=ZKxd6mqk y=490 style='fill: black;font-size: 10pt;' x=376>3.0</text><text id=a6KLmPir y=437 style='fill: black;font-size: 10pt;' x=0>0.0</text></g><g id=axislabels height=250 width=500></g></g></svg>"
==#
#==|||==#
