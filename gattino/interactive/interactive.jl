using Revise


#==output[code]

==#
#==|||==#
using Gattino
using GattinoInteractive
intimg = Gattino.img("gathead", src = "https://github.com/ChifiSource/image_dump/raw/main/gattino/gattinointeractive.png")
newdiv = div("newdiv", align = "center")
push!(newdiv, intimg, Gattino.h("intheader", 2, text = "gattino interactive!"))
newdiv

#==output[code]
"<div id=newdiv align=center><img id=gathead src=https://github.com/ChifiSource/image_dump/raw/main/gattino/gattinointeractive.png></img><h2 id=intheader>gattino interactive!</h2></div>"
==#
#==|||==#
"""


`GattinoInteractive` provides the `Gattino` graphing library with composable forms which can easily be binded to control visualizations.




"""
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
"<div id=flowervis><svg id=window height=500 style='border-top-left-radius: 8px;border-bottom-left-radius: 8px;border: 2px solid black;border-right: 1px solid gray;display: inline-block;' width=500><g id=axes height=500 width=500><line id=kzPR3Ixn y1=500 x2=500 style='fill: none;stroke: black;stroke-width: 4;' y2=500 x1=0></line><line id=IKnHhxbs y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=500 x1=0></line></g><g id=grid height=500 width=500><line id=YqIUUHWY y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=1></line><line id=r89kv5F3 y1=1 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=cme3QCT1 y1=0 x2=126 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=126></line><line id=egsXAVSk y1=126 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=126 x1=0></line><line id=0rqyeNRd y1=0 x2=251 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=251></line><line id=3jPtnLHr y1=251 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=251 x1=0></line><line id=PHrGicwn y1=0 x2=376 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=376></line><line id=N3UusFhV y1=376 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=376 x1=0></line></g><g id=points height=500 width=500><circle id=KeJAK6Qb cx=200.0 style='fill: orange;stroke: lightblue;stroke-width: 0;fill: orange;transition: 1s;' r=10 cy=333.33333333333337></circle><circle id=dPmJChSN cx=100.0 style='fill: orange;stroke: lightblue;stroke-width: 0;fill: red;transition: 1s;' r=4 cy=125.0></circle><circle id=v9kdyA2m cx=300.0 style='fill: orange;stroke: lightblue;stroke-width: 0;fill: white;transition: 1s;' r=7 cy=333.33333333333337></circle><circle id=T8z2iqOL cx=400.0 style='fill: orange;stroke: lightblue;stroke-width: 0;fill: orange;transition: 1s;' r=9 cy=0.0></circle><circle id=XtF3INgy cx=500.0 style='fill: orange;stroke: lightblue;stroke-width: 0;fill: red;transition: 1s;' r=5 cy=166.66666666666669></circle><circle id=7e7niVGu cx=150.0 style='fill: orange;stroke: lightblue;stroke-width: 0;fill: pink;transition: 1s;' r=7 cy=333.33333333333337></circle></g><g id=labels height=500 width=500><text id=HU5lRw2n y=490 style='fill: black;font-size: 10pt;' x=1>0</text><text id=ZccxxhsC y=1 style='fill: black;font-size: 10pt;' x=0>12</text><text id=CoOgSCw1 y=490 style='fill: black;font-size: 10pt;' x=126>2.0</text><text id=hpeJURlZ y=126 style='fill: black;font-size: 10pt;' x=0>9.0</text><text id=TUJc8a6q y=490 style='fill: black;font-size: 10pt;' x=251>4.0</text><text id=k5u4Vypy y=251 style='fill: black;font-size: 10pt;' x=0>6.0</text><text id=GrlG8tRb y=490 style='fill: black;font-size: 10pt;' x=376>6.0</text><text id=ponJKWms y=376 style='fill: black;font-size: 10pt;' x=0>3.0</text></g><g id=axislabels height=500 width=500></g></svg><div id=lO9lKMQj style='width: 500;height: 500;margin-left: 0;margin-right: 0;padding: 0px;vertical-align: top;border-top-left-radius: 0px;border-bottom-left-radius: 0px;border: 2px solid black;border-left: none;padding: 20px;display: inline-block;' height=500 width=500><h2 id=selectcat style='color: purple;margin-bottom: 8px;'>show feature</h2><select id=featb style='height: 5%;color: gray;font-size: 13pt;margin-left: 30px;' oninput=featbinput(event);><option id=n_petals>n_petals</option><option id=stem>stem</option><option id=petal>petal</option></select><script id=featbinput>function featbinput(event){document.getElementById('featb').setAttribute('value',document.getElementById('featb').value);if (String(document.getElementById('featb').value) == 'stem'){document.getElementById('KeJAK6Qb').setAttribute('cx','200.0');document.getElementById('dPmJChSN').setAttribute('cx','100.0');document.getElementById('v9kdyA2m').setAttribute('cx','300.0');document.getElementById('T8z2iqOL').setAttribute('cx','400.0');document.getElementById('XtF3INgy').setAttribute('cx','500.0');document.getElementById('7e7niVGu').setAttribute('cx','150.0');document.getElementById('KeJAK6Qb').setAttribute('cy','0.0');document.getElementById('dPmJChSN').setAttribute('cy','150.0');document.getElementById('v9kdyA2m').setAttribute('cy','100.0');document.getElementById('T8z2iqOL').setAttribute('cy','350.0');document.getElementById('XtF3INgy').setAttribute('cy','275.0');document.getElementById('7e7niVGu').setAttribute('cy','375.0');}if (String(document.getElementById('featb').value) == 'petal'){document.getElementById('KeJAK6Qb').setAttribute('cx','200.0');document.getElementById('dPmJChSN').setAttribute('cx','100.0');document.getElementById('v9kdyA2m').setAttribute('cx','300.0');document.getElementById('T8z2iqOL').setAttribute('cx','400.0');document.getElementById('XtF3INgy').setAttribute('cx','500.0');document.getElementById('7e7niVGu').setAttribute('cx','150.0');document.getElementById('KeJAK6Qb').setAttribute('cy','0.0');document.getElementById('dPmJChSN').setAttribute('cy','300.0');document.getElementById('v9kdyA2m').setAttribute('cy','150.0');document.getElementById('T8z2iqOL').setAttribute('cy','50.0');document.getElementById('XtF3INgy').setAttribute('cy','250.0');document.getElementById('7e7niVGu').setAttribute('cy','150.0');}if (String(document.getElementById('featb').value) == 'n_petals'){document.getElementById('KeJAK6Qb').setAttribute('cx','200.0');document.getElementById('dPmJChSN').setAttribute('cx','100.0');document.getElementById('v9kdyA2m').setAttribute('cx','300.0');document.getElementById('T8z2iqOL').setAttribute('cx','400.0');document.getElementById('XtF3INgy').setAttribute('cx','500.0');document.getElementById('7e7niVGu').setAttribute('cx','150.0');document.getElementById('KeJAK6Qb').setAttribute('cy','333.33333333333337');document.getElementById('dPmJChSN').setAttribute('cy','125.0');document.getElementById('v9kdyA2m').setAttribute('cy','333.33333333333337');document.getElementById('T8z2iqOL').setAttribute('cy','0.0');document.getElementById('XtF3INgy').setAttribute('cy','166.66666666666669');document.getElementById('7e7niVGu').setAttribute('cy','333.33333333333337');}}</script></div></div>"
==#
#==|||==#


#==output[code]


==#
#==|||==#
