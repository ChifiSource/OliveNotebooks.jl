"""# gattino is already great!
Over the course of the past couple days, I have been putting a lot of effort into my project `Gattino`. `Gattino` is a declarative graphing library based on [Toolips](https://github.com/ChifiSource/Toolips.jl) Let's take a look at the various capabilities of `Gattino` in its current state!
 ### current state







"""
#==|||==#

using Gattino
#==output[code]

==#
#==|||==#

newvis = context(200, 100) do con::Context
    group(con, 100, 100) do g::Group
        Gattino.scatter_plot!(g, [5, 10, 15, 2, 5], [1, 5, 3, 4, 6])
    end
end

#==output[code]
"<svg id=window height=100 width=200><g id=axes height=100 width=100><line id=pz9e1B1I y1=100 x2=100 style='fill: none;stroke: black;stroke-width: 4;' y2=100 x1=0></line><line id=XgNRFi4F y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=100 x1=0></line></g><g id=grid height=100 width=100><line id=LbpVAI2z y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=1></line><line id=4wlwhRgI y1=1 x2=100 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=CHhVDupS y1=0 x2=26 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=26></line><line id=JXVVcCrj y1=26 x2=100 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=26 x1=0></line><line id=t1lUrOUV y1=0 x2=51 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=51></line><line id=ZCR8EoBD y1=51 x2=100 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=51 x1=0></line><line id=PJnRDjQi y1=0 x2=76 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=76></line><line id=sF14udgW y1=76 x2=100 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=76 x1=0></line></g><g id=points height=100 width=100><circle id=u9X6zB7M cx=33.33333333333333 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=83.33333333333334></circle><circle id=rgmdGjSp cx=66.66666666666666 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=16.666666666666657></circle><circle id=ql7c51Ir cx=100.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=50.0></circle><circle id=oHHYp6f0 cx=13.333333333333334 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=33.33333333333334></circle><circle id=X7tpbiBJ cx=33.33333333333333 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=0.0></circle></g><g id=labels height=100 width=100><text id=HcCQq2IJ y=90 style='fill: black;font-size: 10pt;' x=1>0</text><text id=i470DnOB y=1 style='fill: black;font-size: 10pt;' x=0>6</text><text id=OCjfRQML y=90 style='fill: black;font-size: 10pt;' x=26>4.0</text><text id=WKc1fsHk y=26 style='fill: black;font-size: 10pt;' x=0>4.0</text><text id=P9aSdtrB y=90 style='fill: black;font-size: 10pt;' x=51>8.0</text><text id=2RdOFxRr y=51 style='fill: black;font-size: 10pt;' x=0>2.0</text><text id=V91lgOgr y=90 style='fill: black;font-size: 10pt;' x=76>12.0</text><text id=Gf1bXPkf y=76 style='fill: black;font-size: 10pt;' x=0>0.0</text></g><g id=axislabels height=100 width=100></g></svg>"
==#
#==|||==#

layers(newvis)
#==output[code]
5-element Vector{Pair{Int64, String}}:
 1 => "axes"
 2 => "grid"
 3 => "points"
 4 => "labels"
 5 => "axislabels"
==#
#==|||==#

group!(newvis, "histogram", 100, 100, 100 => 0) do g::Group
    Gattino.hist!(g, ["emma", "henry", "hank"], [30, 21, 7])
end

#==output[code]

==#
#==|||==#

newvis
#==output[code]
"<svg id=window height=100 width=200><g id=axes height=100 width=100><line id=pz9e1B1I y1=100 x2=100 style='fill: none;stroke: black;stroke-width: 4;' y2=100 x1=0></line><line id=XgNRFi4F y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=100 x1=0></line></g><g id=grid height=100 width=100><line id=LbpVAI2z y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=1></line><line id=4wlwhRgI y1=1 x2=100 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=CHhVDupS y1=0 x2=26 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=26></line><line id=JXVVcCrj y1=26 x2=100 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=26 x1=0></line><line id=t1lUrOUV y1=0 x2=51 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=51></line><line id=ZCR8EoBD y1=51 x2=100 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=51 x1=0></line><line id=PJnRDjQi y1=0 x2=76 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=76></line><line id=sF14udgW y1=76 x2=100 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=76 x1=0></line></g><g id=points height=100 width=100><circle id=u9X6zB7M cx=33.33333333333333 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=83.33333333333334></circle><circle id=rgmdGjSp cx=66.66666666666666 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=16.666666666666657></circle><circle id=ql7c51Ir cx=100.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=50.0></circle><circle id=oHHYp6f0 cx=13.333333333333334 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=33.33333333333334></circle><circle id=X7tpbiBJ cx=33.33333333333333 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=0.0></circle></g><g id=labels height=100 width=100><text id=HcCQq2IJ y=90 style='fill: black;font-size: 10pt;' x=1>0</text><text id=i470DnOB y=1 style='fill: black;font-size: 10pt;' x=0>6</text><text id=OCjfRQML y=90 style='fill: black;font-size: 10pt;' x=26>4.0</text><text id=WKc1fsHk y=26 style='fill: black;font-size: 10pt;' x=0>4.0</text><text id=P9aSdtrB y=90 style='fill: black;font-size: 10pt;' x=51>8.0</text><text id=2RdOFxRr y=51 style='fill: black;font-size: 10pt;' x=0>2.0</text><text id=V91lgOgr y=90 style='fill: black;font-size: 10pt;' x=76>12.0</text><text id=Gf1bXPkf y=76 style='fill: black;font-size: 10pt;' x=0>0.0</text></g><g id=axislabels height=100 width=100></g><g id=histogram height=100 width=100><g id=axes height=100 width=100><line id=5rSF9joH y1=100 x2=200 style='fill: none;stroke: black;stroke-width: 4;' y2=100 x1=100></line><line id=5VJ35LFV y1=0 x2=100 style='fill: none;stroke: black;stroke-width: 4;' y2=100 x1=100></line></g><g id=grid height=100 width=100><line id=5Ne9cNTx y1=0 x2=101 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=101></line><line id=PdrwAxQB y1=1 x2=200 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=100></line><line id=ZVVL1sYO y1=0 x2=134 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=134></line><line id=Qv1JxBix y1=34 x2=200 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=34 x1=100></line><line id=xUJtOV7Z y1=0 x2=167 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=167></line><line id=HbrRIqhP y1=67 x2=200 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=67 x1=100></line><line id=dRCnk81C y1=0 x2=200 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=200></line><line id=SHTmrynl y1=100 x2=200 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=100></line></g><g id=bars height=100 width=100><rect id=Wx8V7OUM width=33 y=0 height=100 style='fill: none;stroke: black;stroke-width: 4;' x=100></rect><rect id=ebaEfqMh width=33 y=30 height=70 style='fill: none;stroke: black;stroke-width: 4;' x=133></rect><rect id=H8MmuXT6 width=33 y=77 height=23 style='fill: none;stroke: black;stroke-width: 4;' x=166></rect></g><g id=labels height=100 width=100><text id=BUSBcUng y=80 style='fill: black;font-size: 11pt;' x=106>emma</text><text id=Jv2UGHTY y=80 style='fill: black;font-size: 11pt;' x=139>henry</text><text id=xRQzXKsM y=80 style='fill: black;font-size: 11pt;' x=172>hank</text><text id=qvD4eMbx y=11 style='fill: black;font-size: 10pt;' x=105>30</text><text id=muk7YcyH y=44 style='fill: black;font-size: 10pt;' x=105>20</text><text id=B4A0LDFz y=77 style='fill: black;font-size: 10pt;' x=105>10</text><text id=tJ7ORFbz y=110 style='fill: black;font-size: 10pt;' x=105>0</text></g><g id=axislabels height=100 width=100></g></g></svg>"
==#
#==|||==#

layers(newvis)
#==output[code]
6-element Vector{Pair{Int64, String}}:
 1 => "axes"
 2 => "grid"
 3 => "points"
 4 => "labels"
 5 => "axislabels"
 6 => "histogram"
==#
#==|||==#

myhist = Gattino.hist(["emmy", "keeley", "henry", "frank"], [50, 38, 10, 12], title = "scores")
#==output[code]
"<svg id=window height=500 width=500><text id=44kF5hhC y=40 style='fill: black;font-size: 15pt;' x=175>scores</text><g id=title height=500 width=500></g><g id=axes height=375 width=375><line id=SlOU6Slz y1=435 x2=435 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line><line id=lzBAVzUy y1=60 x2=60 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line></g><g id=grid height=375 width=375><line id=7SRGG2mw y1=60 x2=61 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=61></line><line id=93CAuqaH y1=61 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=61 x1=60></line><line id=RTrelJeL y1=60 x2=155 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=155></line><line id=umKoQsJx y1=155 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=155 x1=60></line><line id=jFz3oD71 y1=60 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=249></line><line id=3VeD6l86 y1=249 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=60></line><line id=77bKlOi1 y1=60 x2=343 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=343></line><line id=qcpBegG2 y1=343 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=343 x1=60></line></g><g id=bars height=375 width=375><rect id=b8ko9jxS width=94 y=60 height=375 style='fill: none;stroke: black;stroke-width: 4;' x=60></rect><rect id=IjuYZPEp width=94 y=150 height=285 style='fill: none;stroke: black;stroke-width: 4;' x=154></rect><rect id=EM6wXsC6 width=94 y=360 height=75 style='fill: none;stroke: black;stroke-width: 4;' x=248></rect><rect id=YMTmwcHv width=94 y=345 height=90 style='fill: none;stroke: black;stroke-width: 4;' x=342></rect></g><g id=labels height=375 width=375><text id=X7tvOD2K y=300 style='fill: black;font-size: 11pt;' x=75>emmy</text><text id=koAKzIjo y=300 style='fill: black;font-size: 11pt;' x=169>keeley</text><text id=BZ4HwQUH y=300 style='fill: black;font-size: 11pt;' x=263>henry</text><text id=H61LfqED y=300 style='fill: black;font-size: 11pt;' x=357>frank</text><text id=0h3XCMGh y=89 style='fill: black;font-size: 10pt;' x=79>50</text><text id=5xWgs98m y=183 style='fill: black;font-size: 10pt;' x=79>38</text><text id=cR6cW6t9 y=277 style='fill: black;font-size: 10pt;' x=79>26</text><text id=9oqYYnAz y=371 style='fill: black;font-size: 10pt;' x=79>14</text></g><g id=axislabels height=375 width=375></g></svg>"
==#
#==|||==#

layers(myhist)
#==output[code]
7-element Vector{Pair{Int64, String}}:
 1 => "44kF5hhC"
 2 => "title"
 3 => "axes"
 4 => "grid"
 5 => "bars"
 6 => "labels"
 7 => "axislabels"
==#
#==|||==#

style!(myhist, "bars", "fill" => "red", "opacity" => 60percent)
#==output[code]

==#
#==|||==#

myhist
#==output[code]
"<svg id=window height=500 width=500><text id=44kF5hhC y=40 style='fill: black;font-size: 15pt;' x=175>scores</text><g id=title height=500 width=500></g><g id=axes height=375 width=375><line id=SlOU6Slz y1=435 x2=435 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line><line id=lzBAVzUy y1=60 x2=60 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line></g><g id=grid height=375 width=375><line id=7SRGG2mw y1=60 x2=61 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=61></line><line id=93CAuqaH y1=61 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=61 x1=60></line><line id=RTrelJeL y1=60 x2=155 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=155></line><line id=umKoQsJx y1=155 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=155 x1=60></line><line id=jFz3oD71 y1=60 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=249></line><line id=3VeD6l86 y1=249 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=60></line><line id=77bKlOi1 y1=60 x2=343 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=343></line><line id=qcpBegG2 y1=343 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=343 x1=60></line></g><g id=bars height=375 width=375><rect id=b8ko9jxS width=94 y=60 height=375 style='fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;' x=60></rect><rect id=IjuYZPEp width=94 y=150 height=285 style='fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;' x=154></rect><rect id=EM6wXsC6 width=94 y=360 height=75 style='fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;' x=248></rect><rect id=YMTmwcHv width=94 y=345 height=90 style='fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;' x=342></rect></g><g id=labels height=375 width=375><text id=X7tvOD2K y=300 style='fill: black;font-size: 11pt;' x=75>emmy</text><text id=koAKzIjo y=300 style='fill: black;font-size: 11pt;' x=169>keeley</text><text id=BZ4HwQUH y=300 style='fill: black;font-size: 11pt;' x=263>henry</text><text id=H61LfqED y=300 style='fill: black;font-size: 11pt;' x=357>frank</text><text id=0h3XCMGh y=89 style='fill: black;font-size: 10pt;' x=79>50</text><text id=5xWgs98m y=183 style='fill: black;font-size: 10pt;' x=79>38</text><text id=cR6cW6t9 y=277 style='fill: black;font-size: 10pt;' x=79>26</text><text id=9oqYYnAz y=371 style='fill: black;font-size: 10pt;' x=79>14</text></g><g id=axislabels height=375 width=375></g></svg>"
==#
#==|||==#

style!(myhist, "axislabels", "font-size" => 13pt)
style!(myhist, "labels", "font-size" => 14pt, "font-weight" => "bold")

#==output[code]

==#
#==|||==#

myhist
#==output[code]
"<svg id=window height=500 width=500><text id=44kF5hhC y=40 style='fill: black;font-size: 15pt;' x=175>scores</text><g id=title height=500 width=500></g><g id=axes height=375 width=375><line id=SlOU6Slz y1=435 x2=435 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line><line id=lzBAVzUy y1=60 x2=60 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line></g><g id=grid height=375 width=375><line id=7SRGG2mw y1=60 x2=61 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=61></line><line id=93CAuqaH y1=61 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=61 x1=60></line><line id=RTrelJeL y1=60 x2=155 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=155></line><line id=umKoQsJx y1=155 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=155 x1=60></line><line id=jFz3oD71 y1=60 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=249></line><line id=3VeD6l86 y1=249 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=60></line><line id=77bKlOi1 y1=60 x2=343 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=343></line><line id=qcpBegG2 y1=343 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=343 x1=60></line></g><g id=bars height=375 width=375><rect id=b8ko9jxS width=94 y=60 height=375 style='fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;' x=60></rect><rect id=IjuYZPEp width=94 y=150 height=285 style='fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;' x=154></rect><rect id=EM6wXsC6 width=94 y=360 height=75 style='fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;' x=248></rect><rect id=YMTmwcHv width=94 y=345 height=90 style='fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;' x=342></rect></g><g id=labels height=375 width=375><text id=X7tvOD2K y=300 style='fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;' x=75>emmy</text><text id=koAKzIjo y=300 style='fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;' x=169>keeley</text><text id=BZ4HwQUH y=300 style='fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;' x=263>henry</text><text id=H61LfqED y=300 style='fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;' x=357>frank</text><text id=0h3XCMGh y=89 style='fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;' x=79>50</text><text id=5xWgs98m y=183 style='fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;' x=79>38</text><text id=cR6cW6t9 y=277 style='fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;' x=79>26</text><text id=9oqYYnAz y=371 style='fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;' x=79>14</text></g><g id=axislabels height=375 width=375></g></svg>"
==#
#==|||==#

layers(myhist)
#==output[code]
7-element Vector{Pair{Int64, String}}:
 1 => "44kF5hhC"
 2 => "title"
 3 => "axes"
 4 => "grid"
 5 => "bars"
 6 => "labels"
 7 => "axislabels"
==#
#==|||==#

Gattino.move_layer!(myhist, "axislabels", 2)
#==output[code]
7-element Vector{Toolips.Servable}:
 Toolips.Component{:text}("44kF5hhC", Dict{Any, Any}(:children => Toolips.Servable[], :y => 40, "style" => "'fill: black;font-size: 15pt;'", :text => "scores", :x => 175), Toolips.Servable[], "text")
 Toolips.Component{:g}("axislabels", Dict{Any, Any}(:children => Toolips.Servable[], :height => 375, :width => 375), Toolips.Servable[], "g")
 Toolips.Component{:g}("title", Dict{Any, Any}(:children => Toolips.Servable[], :height => 500, :width => 500), Toolips.Servable[], "g")
 Toolips.Component{:g}("axes", Dict{Any, Any}(:children => Toolips.Servable[Toolips.Component{:line}("SlOU6Slz", Dict{Any, Any}(:children => Toolips.Servable[], :y1 => 435, :x2 => 435, "style" => "'fill: none;stroke: black;stroke-width: 4;'", :y2 => 435, :x1 => 60), Toolips.Servable[], "line"), Toolips.Component{:line}("lzBAVzUy", Dict{Any, Any}(:children => Toolips.Servable[], :y1 => 60, :x2 => 60, "style" => "'fill: none;stroke: black;stroke-width: 4;'", :y2 => 435, :x1 => 60), Toolips.Servable[], "line")], :height => 375, :width => 375), Toolips.Servable[], "g")
 Toolips.Component{:g}("grid", Dict{Any, Any}(:children => Toolips.Servable[Toolips.Component{:line}("7SRGG2mw", Dict{Any, Any}(:children => Toolips.Servable[], :y1 => 60, :x2 => 61, "style" => "'fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;'", :y2 => 435, :x1 => 61), Toolips.Servable[], "line"), Toolips.Component{:line}("93CAuqaH", Dict{Any, Any}(:children => Toolips.Servable[], :y1 => 61, :x2 => 435, "style" => "'fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;'", :y2 => 61, :x1 => 60), Toolips.Servable[], "line"), Toolips.Component{:line}("RTrelJeL", Dict{Any, Any}(:children => Toolips.Servable[], :y1 => 60, :x2 => 155, "style" => "'fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;'", :y2 => 435, :x1 => 155), Toolips.Servable[], "line"), Toolips.Component{:line}("umKoQsJx", Dict{Any, Any}(:children => Toolips.Servable[], :y1 => 155, :x2 => 435, "style" => "'fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;'", :y2 => 155, :x1 => 60), Toolips.Servable[], "line"), Toolips.Component{:line}("jFz3oD71", Dict{Any, Any}(:children => Toolips.Servable[], :y1 => 60, :x2 => 249, "style" => "'fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;'", :y2 => 435, :x1 => 249), Toolips.Servable[], "line"), Toolips.Component{:line}("3VeD6l86", Dict{Any, Any}(:children => Toolips.Servable[], :y1 => 249, :x2 => 435, "style" => "'fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;'", :y2 => 249, :x1 => 60), Toolips.Servable[], "line"), Toolips.Component{:line}("77bKlOi1", Dict{Any, Any}(:children => Toolips.Servable[], :y1 => 60, :x2 => 343, "style" => "'fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;'", :y2 => 435, :x1 => 343), Toolips.Servable[], "line"), Toolips.Component{:line}("qcpBegG2", Dict{Any, Any}(:children => Toolips.Servable[], :y1 => 343, :x2 => 435, "style" => "'fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;'", :y2 => 343, :x1 => 60), Toolips.Servable[], "line")], :height => 375, :width => 375), Toolips.Servable[], "g")
 Toolips.Component{:g}("bars", Dict{Any, Any}(:children => Toolips.Servable[Toolips.Component{:rect}("b8ko9jxS", Dict{Any, Any}(:width => 94, :children => Toolips.Servable[], :y => 60, :height => 375, "style" => "'fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;'", :x => 60), Toolips.Servable[], "rect"), Toolips.Component{:rect}("IjuYZPEp", Dict{Any, Any}(:width => 94, :children => Toolips.Servable[], :y => 150, :height => 285, "style" => "'fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;'", :x => 154), Toolips.Servable[], "rect"), Toolips.Component{:rect}("EM6wXsC6", Dict{Any, Any}(:width => 94, :children => Toolips.Servable[], :y => 360, :height => 75, "style" => "'fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;'", :x => 248), Toolips.Servable[], "rect"), Toolips.Component{:rect}("YMTmwcHv", Dict{Any, Any}(:width => 94, :children => Toolips.Servable[], :y => 345, :height => 90, "style" => "'fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;'", :x => 342), Toolips.Servable[], "rect")], :height => 375, :width => 375), Toolips.Servable[], "g")
 Toolips.Component{:g}("labels", Dict{Any, Any}(:children => Toolips.Servable[Toolips.Component{:text}("X7tvOD2K", Dict{Any, Any}(:children => Toolips.Servable[], :y => 300, "style" => "'fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;'", :text => "emmy", :x => 75), Toolips.Servable[], "text"), Toolips.Component{:text}("koAKzIjo", Dict{Any, Any}(:children => Toolips.Servable[], :y => 300, "style" => "'fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;'", :text => "keeley", :x => 169), Toolips.Servable[], "text"), Toolips.Component{:text}("BZ4HwQUH", Dict{Any, Any}(:children => Toolips.Servable[], :y => 300, "style" => "'fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;'", :text => "henry", :x => 263), Toolips.Servable[], "text"), Toolips.Component{:text}("H61LfqED", Dict{Any, Any}(:children => Toolips.Servable[], :y => 300, "style" => "'fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;'", :text => "frank", :x => 357), Toolips.Servable[], "text"), Toolips.Component{:text}("0h3XCMGh", Dict{Any, Any}(:children => Toolips.Servable[], :y => 89, "style" => "'fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;'", :text => "50", :x => 79), Toolips.Servable[], "text"), Toolips.Component{:text}("5xWgs98m", Dict{Any, Any}(:children => Toolips.Servable[], :y => 183, "style" => "'fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;'", :text => "38", :x => 79), Toolips.Servable[], "text"), Toolips.Component{:text}("cR6cW6t9", Dict{Any, Any}(:children => Toolips.Servable[], :y => 277, "style" => "'fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;'", :text => "26", :x => 79), Toolips.Servable[], "text"), Toolips.Component{:text}("9oqYYnAz", Dict{Any, Any}(:children => Toolips.Servable[], :y => 371, "style" => "'fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;'", :text => "14", :x => 79), Toolips.Servable[], "text")], :height => 375, :width => 375), Toolips.Servable[], "g")
==#
#==|||==#

layers(myhist)
#==output[code]
7-element Vector{Pair{Int64, String}}:
 1 => "44kF5hhC"
 2 => "axislabels"
 3 => "title"
 4 => "axes"
 5 => "grid"
 6 => "bars"
 7 => "labels"
==#
#==|||==#

Gattino.delete_layer!(myhist, "grid")
#==output[code]
6-element Vector{Toolips.Servable}:
 Toolips.Component{:text}("44kF5hhC", Dict{Any, Any}(:children => Toolips.Servable[], :y => 40, "style" => "'fill: black;font-size: 15pt;'", :text => "scores", :x => 175), Toolips.Servable[], "text")
 Toolips.Component{:g}("axislabels", Dict{Any, Any}(:children => Toolips.Servable[], :height => 375, :width => 375), Toolips.Servable[], "g")
 Toolips.Component{:g}("title", Dict{Any, Any}(:children => Toolips.Servable[], :height => 500, :width => 500), Toolips.Servable[], "g")
 Toolips.Component{:g}("axes", Dict{Any, Any}(:children => Toolips.Servable[Toolips.Component{:line}("SlOU6Slz", Dict{Any, Any}(:children => Toolips.Servable[], :y1 => 435, :x2 => 435, "style" => "'fill: none;stroke: black;stroke-width: 4;'", :y2 => 435, :x1 => 60), Toolips.Servable[], "line"), Toolips.Component{:line}("lzBAVzUy", Dict{Any, Any}(:children => Toolips.Servable[], :y1 => 60, :x2 => 60, "style" => "'fill: none;stroke: black;stroke-width: 4;'", :y2 => 435, :x1 => 60), Toolips.Servable[], "line")], :height => 375, :width => 375), Toolips.Servable[], "g")
 Toolips.Component{:g}("bars", Dict{Any, Any}(:children => Toolips.Servable[Toolips.Component{:rect}("b8ko9jxS", Dict{Any, Any}(:width => 94, :children => Toolips.Servable[], :y => 60, :height => 375, "style" => "'fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;'", :x => 60), Toolips.Servable[], "rect"), Toolips.Component{:rect}("IjuYZPEp", Dict{Any, Any}(:width => 94, :children => Toolips.Servable[], :y => 150, :height => 285, "style" => "'fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;'", :x => 154), Toolips.Servable[], "rect"), Toolips.Component{:rect}("EM6wXsC6", Dict{Any, Any}(:width => 94, :children => Toolips.Servable[], :y => 360, :height => 75, "style" => "'fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;'", :x => 248), Toolips.Servable[], "rect"), Toolips.Component{:rect}("YMTmwcHv", Dict{Any, Any}(:width => 94, :children => Toolips.Servable[], :y => 345, :height => 90, "style" => "'fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;'", :x => 342), Toolips.Servable[], "rect")], :height => 375, :width => 375), Toolips.Servable[], "g")
 Toolips.Component{:g}("labels", Dict{Any, Any}(:children => Toolips.Servable[Toolips.Component{:text}("X7tvOD2K", Dict{Any, Any}(:children => Toolips.Servable[], :y => 300, "style" => "'fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;'", :text => "emmy", :x => 75), Toolips.Servable[], "text"), Toolips.Component{:text}("koAKzIjo", Dict{Any, Any}(:children => Toolips.Servable[], :y => 300, "style" => "'fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;'", :text => "keeley", :x => 169), Toolips.Servable[], "text"), Toolips.Component{:text}("BZ4HwQUH", Dict{Any, Any}(:children => Toolips.Servable[], :y => 300, "style" => "'fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;'", :text => "henry", :x => 263), Toolips.Servable[], "text"), Toolips.Component{:text}("H61LfqED", Dict{Any, Any}(:children => Toolips.Servable[], :y => 300, "style" => "'fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;'", :text => "frank", :x => 357), Toolips.Servable[], "text"), Toolips.Component{:text}("0h3XCMGh", Dict{Any, Any}(:children => Toolips.Servable[], :y => 89, "style" => "'fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;'", :text => "50", :x => 79), Toolips.Servable[], "text"), Toolips.Component{:text}("5xWgs98m", Dict{Any, Any}(:children => Toolips.Servable[], :y => 183, "style" => "'fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;'", :text => "38", :x => 79), Toolips.Servable[], "text"), Toolips.Component{:text}("cR6cW6t9", Dict{Any, Any}(:children => Toolips.Servable[], :y => 277, "style" => "'fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;'", :text => "26", :x => 79), Toolips.Servable[], "text"), Toolips.Component{:text}("9oqYYnAz", Dict{Any, Any}(:children => Toolips.Servable[], :y => 371, "style" => "'fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;'", :text => "14", :x => 79), Toolips.Servable[], "text")], :height => 375, :width => 375), Toolips.Servable[], "g")
==#
#==|||==#
layers(myhist)
#==output[code]
6-element Vector{Pair{Int64, String}}:
 1 => "44kF5hhC"
 2 => "axislabels"
 3 => "title"
 4 => "axes"
 5 => "bars"
 6 => "labels"
==#
#==|||==#

myhist
#==output[code]
"<svg id=window height=500 width=500><text id=44kF5hhC y=40 style='fill: black;font-size: 15pt;' x=175>scores</text><g id=axislabels height=375 width=375></g><g id=title height=500 width=500></g><g id=axes height=375 width=375><line id=SlOU6Slz y1=435 x2=435 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line><line id=lzBAVzUy y1=60 x2=60 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line></g><g id=bars height=375 width=375><rect id=b8ko9jxS width=94 y=60 height=375 style='fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;' x=60></rect><rect id=IjuYZPEp width=94 y=150 height=285 style='fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;' x=154></rect><rect id=EM6wXsC6 width=94 y=360 height=75 style='fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;' x=248></rect><rect id=YMTmwcHv width=94 y=345 height=90 style='fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;' x=342></rect></g><g id=labels height=375 width=375><text id=X7tvOD2K y=300 style='fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;' x=75>emmy</text><text id=koAKzIjo y=300 style='fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;' x=169>keeley</text><text id=BZ4HwQUH y=300 style='fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;' x=263>henry</text><text id=H61LfqED y=300 style='fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;' x=357>frank</text><text id=0h3XCMGh y=89 style='fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;' x=79>50</text><text id=5xWgs98m y=183 style='fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;' x=79>38</text><text id=cR6cW6t9 y=277 style='fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;' x=79>26</text><text id=9oqYYnAz y=371 style='fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;' x=79>14</text></g></svg>"
==#
#==|||==#

Gattino.open_layer!(newvis, "points") do comp
    comp[:r] = parse(Int64, comp[:r]) + 1
end

#==output[code]

==#
#==|||==#

newvis
#==output[code]
"<svg id=window height=100 width=200><g id=axes height=100 width=100><line id=pz9e1B1I y1=100 x2=100 style='fill: none;stroke: black;stroke-width: 4;' y2=100 x1=0></line><line id=XgNRFi4F y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=100 x1=0></line></g><g id=grid height=100 width=100><line id=LbpVAI2z y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=1></line><line id=4wlwhRgI y1=1 x2=100 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=CHhVDupS y1=0 x2=26 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=26></line><line id=JXVVcCrj y1=26 x2=100 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=26 x1=0></line><line id=t1lUrOUV y1=0 x2=51 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=51></line><line id=ZCR8EoBD y1=51 x2=100 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=51 x1=0></line><line id=PJnRDjQi y1=0 x2=76 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=76></line><line id=sF14udgW y1=76 x2=100 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=76 x1=0></line></g><g id=points height=100 width=100><circle id=u9X6zB7M cx=33.33333333333333 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=6 cy=83.33333333333334></circle><circle id=rgmdGjSp cx=66.66666666666666 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=6 cy=16.666666666666657></circle><circle id=ql7c51Ir cx=100.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=6 cy=50.0></circle><circle id=oHHYp6f0 cx=13.333333333333334 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=6 cy=33.33333333333334></circle><circle id=X7tpbiBJ cx=33.33333333333333 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=6 cy=0.0></circle></g><g id=labels height=100 width=100><text id=HcCQq2IJ y=90 style='fill: black;font-size: 10pt;' x=1>0</text><text id=i470DnOB y=1 style='fill: black;font-size: 10pt;' x=0>6</text><text id=OCjfRQML y=90 style='fill: black;font-size: 10pt;' x=26>4.0</text><text id=WKc1fsHk y=26 style='fill: black;font-size: 10pt;' x=0>4.0</text><text id=P9aSdtrB y=90 style='fill: black;font-size: 10pt;' x=51>8.0</text><text id=2RdOFxRr y=51 style='fill: black;font-size: 10pt;' x=0>2.0</text><text id=V91lgOgr y=90 style='fill: black;font-size: 10pt;' x=76>12.0</text><text id=Gf1bXPkf y=76 style='fill: black;font-size: 10pt;' x=0>0.0</text></g><g id=axislabels height=100 width=100></g><g id=histogram height=100 width=100><g id=axes height=100 width=100><line id=5rSF9joH y1=100 x2=200 style='fill: none;stroke: black;stroke-width: 4;' y2=100 x1=100></line><line id=5VJ35LFV y1=0 x2=100 style='fill: none;stroke: black;stroke-width: 4;' y2=100 x1=100></line></g><g id=grid height=100 width=100><line id=5Ne9cNTx y1=0 x2=101 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=101></line><line id=PdrwAxQB y1=1 x2=200 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=100></line><line id=ZVVL1sYO y1=0 x2=134 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=134></line><line id=Qv1JxBix y1=34 x2=200 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=34 x1=100></line><line id=xUJtOV7Z y1=0 x2=167 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=167></line><line id=HbrRIqhP y1=67 x2=200 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=67 x1=100></line><line id=dRCnk81C y1=0 x2=200 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=200></line><line id=SHTmrynl y1=100 x2=200 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=100 x1=100></line></g><g id=bars height=100 width=100><rect id=Wx8V7OUM width=33 y=0 height=100 style='fill: none;stroke: black;stroke-width: 4;' x=100></rect><rect id=ebaEfqMh width=33 y=30 height=70 style='fill: none;stroke: black;stroke-width: 4;' x=133></rect><rect id=H8MmuXT6 width=33 y=77 height=23 style='fill: none;stroke: black;stroke-width: 4;' x=166></rect></g><g id=labels height=100 width=100><text id=BUSBcUng y=80 style='fill: black;font-size: 11pt;' x=106>emma</text><text id=Jv2UGHTY y=80 style='fill: black;font-size: 11pt;' x=139>henry</text><text id=xRQzXKsM y=80 style='fill: black;font-size: 11pt;' x=172>hank</text><text id=qvD4eMbx y=11 style='fill: black;font-size: 10pt;' x=105>30</text><text id=muk7YcyH y=44 style='fill: black;font-size: 10pt;' x=105>20</text><text id=B4A0LDFz y=77 style='fill: black;font-size: 10pt;' x=105>10</text><text id=tJ7ORFbz y=110 style='fill: black;font-size: 10pt;' x=105>0</text></g><g id=axislabels height=100 width=100></g></g></svg>"
==#
#==|||==#

data = Dict("name" => ["emma", "kevin", "bobby"], "years" => [2, 5, 2], "age" => [24, 35, 26], 
    "contributions" => [500, 20, 235], "children" => [3, 5, 2], "visited" => [10, 56, 125])
#==output[code]
Dict{String, Vector} with 6 entries:
  "name" => ["emma", "kevin", "bobby"]
  "visited" => [10, 56, 125]
  "contributions" => [500, 20, 235]
  "years" => [2, 5, 2]
  "age" => [24, 35, 26]
  "children" => [3, 5, 2]
==#
#==|||==#

plotteddata = context(1000, 500) do con::Context
    group(con, 500, 500) do g::Group
        Gattino.hist!(g, data["name"], data["age"])
    end
    style!(con, "bars", "fill" => "purple", "opacity" => 40percent)
    group(con, 500, 500, 500 => 0) do g::Group
        Gattino.scatter_plot!(con, data["age"], data["contributions"])
    end
    e = 1
    colors = ("#FF2400", "#d30000", "#7C0A02")
    mostvisited = maximum(data["visited"])
    Gattino.open_layer!(con, "points") do comp
        style!(comp, "stroke-width" => data["years"][e]px, "stroke" => "darkgray")
        comp[:r] = Int64(round(data["children"][e] * 4.5))
        if data["visited"][e] > mostvisited * .75
            style!(comp, "fill" => colors[3])
        elseif data["visited"][e] > mostvisited * .50
            style!(comp, "fill" => colors[2])
        else
            style!(comp, "fill" => colors[1])
        end 
        e += 1
    end
end

#==output[code]
"<svg id=window height=500 width=1000><g id=axes height=500 width=500><line id=q5hTGlDn y1=500 x2=500 style='fill: none;stroke: black;stroke-width: 4;' y2=500 x1=0></line><line id=YzUhdnMx y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=500 x1=0></line></g><g id=grid height=500 width=500><line id=oKu0leYJ y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=1></line><line id=WCu324Gb y1=1 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=G69ZeGye y1=0 x2=168 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=168></line><line id=AyDLGXju y1=168 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=168 x1=0></line><line id=xSR3YA5X y1=0 x2=335 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=335></line><line id=hFeHFSlF y1=335 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=335 x1=0></line></g><g id=bars height=500 width=500><rect id=ZRvLytng width=167 y=157 height=343 style='fill: none;stroke: black;stroke-width: 4;fill: purple;opacity: 40%;' x=0></rect><rect id=BujcpL6A width=167 y=0 height=500 style='fill: none;stroke: black;stroke-width: 4;fill: purple;opacity: 40%;' x=167></rect><rect id=rC0UTZe8 width=167 y=129 height=371 style='fill: none;stroke: black;stroke-width: 4;fill: purple;opacity: 40%;' x=334></rect></g><g id=labels height=500 width=500><text id=qIejI7Rh y=400 style='fill: black;font-size: 11pt;' x=26>emma</text><text id=5mM2Sax7 y=400 style='fill: black;font-size: 11pt;' x=193>kevin</text><text id=2chr9lsD y=400 style='fill: black;font-size: 11pt;' x=360>bobby</text><text id=7I2msn6e y=51 style='fill: black;font-size: 10pt;' x=25>35</text><text id=V1AJSaUX y=218 style='fill: black;font-size: 10pt;' x=25>23</text><text id=Y2kyYFru y=385 style='fill: black;font-size: 10pt;' x=25>11</text></g><g id=axislabels height=500 width=500></g><g id=axes height=500 width=1000><line id=rALrphoS y1=500 x2=1000 style='fill: none;stroke: black;stroke-width: 4;' y2=500 x1=0></line><line id=pVa9XYai y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=500 x1=0></line></g><g id=grid height=500 width=1000><line id=GFd5o6fE y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=1></line><line id=ExSBsNE1 y1=1 x2=1000 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=HjXbXA8C y1=0 x2=251 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=251></line><line id=fc5FM7Er y1=126 x2=1000 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=126 x1=0></line><line id=B55nVD6E y1=0 x2=501 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=501></line><line id=k3q3Iv3y y1=251 x2=1000 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=251 x1=0></line><line id=dMv060NL y1=0 x2=751 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=500 x1=751></line><line id=nTg1k7q4 y1=376 x2=1000 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=376 x1=0></line></g><g id=points height=500 width=1000><circle id=Wm51Q03B cx=685.7142857142857 style='fill: orange;stroke: lightblue;stroke-width: 0;stroke-width: 2px;stroke: darkgray;fill: #FF2400;' r=14 cy=0.0></circle><circle id=ap4bZF6X cx=1000.0 style='fill: orange;stroke: lightblue;stroke-width: 0;stroke-width: 5px;stroke: darkgray;fill: #FF2400;' r=22 cy=480.0></circle><circle id=74rCZ28h cx=742.8571428571429 style='fill: orange;stroke: lightblue;stroke-width: 0;stroke-width: 2px;stroke: darkgray;fill: #7C0A02;' r=9 cy=265.0></circle></g><g id=labels height=500 width=1000><text id=cLtjeEBl y=490 style='fill: black;font-size: 10pt;' x=1>0</text><text id=SuBQc15K y=1 style='fill: black;font-size: 10pt;' x=0>500</text><text id=6SsZvx2H y=490 style='fill: black;font-size: 10pt;' x=251>9.0</text><text id=mhbEgz2x y=126 style='fill: black;font-size: 10pt;' x=0>375.0</text><text id=fpFMjzUI y=490 style='fill: black;font-size: 10pt;' x=501>18.0</text><text id=jWWQAVbo y=251 style='fill: black;font-size: 10pt;' x=0>250.0</text><text id=pjLfVRA2 y=490 style='fill: black;font-size: 10pt;' x=751>27.0</text><text id=F7wkpexF y=376 style='fill: black;font-size: 10pt;' x=0>125.0</text></g><g id=axislabels height=500 width=1000></g></svg>"
==#
#==|||==#
coverimg = context(1280, 720) do con::Context
    group(con, Int64(con.dim[1] / 2), con.dim[2]) do g::Group
        Gattino.hist!(g, ["emmy", "keeley", "henry", "frank"], [50, 38, 10, 12], title = "scores")
    end
    style!(con, "bars", "fill" => "red", "opacity" => 60percent)
    style!(con, "axislabels", "font-size" => 13pt)
    style!(con, "labels", "font-size" => 14pt, "font-weight" => "bold")
    group!(con, "titles", Int64(con.dim[1] / 2), con.dim[2], Int64(con.dim[1] / 2) => 0) do g::Group
        Gattino.text!(g, g.dim[1], Int64(con.dim[2] / 2), "gattino is already", "fill" => "darkgray", "font-size" => 22pt)
        Gattino.text!(g, g.dim[1] + 10, Int64(round(con.dim[2] * .55)), "great!", "fill" => "darkgray", "font-size" => 33pt, 
"font-weight" => "bold")
    end
    group!(con, "coverimg", Int64(con.dim[1] / 2), con.dim[2], Int64(con.dim[1] / 2) => 0) do g::Group
       Gattino.line!(g, [1, 2, 3, 4, 5, 6], [15, 6, 8, 10, 30, 35], "stroke" => "purple", "stroke-width" => 7px, "fill" => "none")
       image = Gattino.Toolips.Component("image", "image")
       image[:href] = "https://raw.githubusercontent.com/ChifiSource/image_dump/main/gattino/gattino.png"
       image[:x], image[:y] = Int64(con.dim[1] / 2), Int64(round(con.dim[2] * .10))
       Gattino.draw!(con, [image])
    end
end

#==output[code]
"<svg id=window height=720 width=1280><text id=ohEQxWwR y=58 style='fill: black;font-size: 15pt;' x=224>scores</text><g id=title height=720 width=640></g><g id=axes height=540 width=480><line id=uKjjWGGH y1=626 x2=557 style='fill: none;stroke: black;stroke-width: 4;' y2=626 x1=77></line><line id=Qv5q7mLd y1=86 x2=77 style='fill: none;stroke: black;stroke-width: 4;' y2=626 x1=77></line></g><g id=grid height=540 width=480><line id=TxUof02n y1=86 x2=78 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=626 x1=78></line><line id=YpAAv1Nh y1=87 x2=557 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=87 x1=77></line><line id=409k7uXV y1=86 x2=198 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=626 x1=198></line><line id=mjl9Pwbt y1=222 x2=557 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=222 x1=77></line><line id=34jXXfbF y1=86 x2=318 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=626 x1=318></line><line id=EBjW0X7A y1=357 x2=557 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=357 x1=77></line><line id=SCX92BFa y1=86 x2=438 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=626 x1=438></line><line id=Q57wLKqb y1=492 x2=557 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=492 x1=77></line></g><g id=bars height=540 width=480><rect id=9TvmSHl5 width=120 y=86 height=540 style='fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;' x=77></rect><rect id=wkzn9AmI width=120 y=216 height=410 style='fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;' x=197></rect><rect id=ktViQ7hC width=120 y=518 height=108 style='fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;' x=317></rect><rect id=er8Ez7hZ width=120 y=496 height=130 style='fill: none;stroke: black;stroke-width: 4;fill: red;opacity: 60%;' x=437></rect></g><g id=labels height=540 width=480><text id=bicfUL0d y=432 style='fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;' x=96>emmy</text><text id=qfBBarUo y=432 style='fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;' x=216>keeley</text><text id=w1nBKhzN y=432 style='fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;' x=336>henry</text><text id=AUHjqP6s y=432 style='fill: black;font-size: 11pt;font-size: 14pt;font-weight: bold;' x=456>frank</text><text id=GTbI5IDD y=127 style='fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;' x=101>50</text><text id=0CqMgVbQ y=262 style='fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;' x=101>38</text><text id=kc1VLYoG y=397 style='fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;' x=101>26</text><text id=ui5j7wmA y=532 style='fill: black;font-size: 10pt;font-size: 14pt;font-weight: bold;' x=101>14</text></g><g id=axislabels height=540 width=480></g><g id=titles height=720 width=640><text id=Pihq7HhZ y=360 style='fill: darkgray;font-size: 22pt;' x=640>gattino is already</text><text id=VnjTAzjt y=396 style='fill: darkgray;font-size: 33pt;font-weight: bold;' x=650>great!</text></g><image id=image y=72 href=https://raw.githubusercontent.com/ChifiSource/image_dump/main/gattino/gattino.png x=640></image><g id=coverimg height=720 width=640><polyline id=newline style='stroke: purple;stroke-width: 7px;fill: none;' points=747&#32;411,853&#32;597,960&#32;555,1067&#32;514,1173&#32;103,1280&#32;0,></polyline></g></svg>"
==#
#==|||==#
Gattino.ToolipsSVG.image("gattinocover", )
#==output[code]
image (generic function with 1 method)
==#
#==|||==#
