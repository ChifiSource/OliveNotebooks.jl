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
"<svg id=window height=500 width=500><text id=XS3ms8yi y=40 style='fill: black;font-size: 15pt;' x=175>votes for names</text><g id=title height=500 width=500></g><g id=axes height=375 width=375><line id=h3T1TzN1 y1=435 x2=435 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line><line id=JGCu8Kck y1=60 x2=60 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line></g><g id=grid height=375 width=375><line id=LMmyB99B y1=60 x2=61 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=61></line><line id=TFYZmdPT y1=61 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=61 x1=60></line><line id=HMI098QU y1=60 x2=186 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=186></line><line id=7pDqKjb8 y1=186 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=186 x1=60></line><line id=peK8MQr9 y1=60 x2=311 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=311></line><line id=UQgtDG1p y1=311 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=311 x1=60></line></g><g id=bars height=375 width=375><rect id=4pp3BHXW width=125 y=105 height=330 style='fill: none;stroke: black;stroke-width: 4;' x=60></rect><rect id=DMc5SrWT width=125 y=60 height=375 style='fill: none;stroke: black;stroke-width: 4;' x=185></rect><rect id=15KFnSJF width=125 y=225 height=210 style='fill: none;stroke: black;stroke-width: 4;' x=310></rect></g><g id=labels height=375 width=375><text id=5L5t6Rli y=300 style='fill: black;font-size: 11pt;' x=80>emma</text><text id=4kHYpLyq y=300 style='fill: black;font-size: 11pt;' x=205>emmy</text><text id=kZlkHYnX y=300 style='fill: black;font-size: 11pt;' x=330>em</text><text id=KvzdfhZ8 y=99 style='fill: black;font-size: 10pt;' x=79>25</text><text id=esiUdqBh y=224 style='fill: black;font-size: 10pt;' x=79>17</text><text id=2VdsS1sU y=349 style='fill: black;font-size: 10pt;' x=79>9</text></g><g id=axislabels height=375 width=375></g></svg>"
==#
#==|||==#
myframe = context(500, 500) do con::Context
    group!(con, "scatter", 250, 250) do g::Group
        Gattino.scatter_plot!(g, [1, 2, 3, 4], [1, 2, 3, 4])
    end
end

#==output[code]
"<svg id=window height=500 width=500><g id=scatter height=250 width=250><g id=axes height=250 width=250><line id=sy6gYrTD y1=250 x2=250 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line><line id=SgHSxs8q y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line></g><g id=grid height=250 width=250><line id=EnIW9gp8 y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=1></line><line id=AIJd2S7H y1=1 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=kQ8Ua2pI y1=0 x2=63 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=63></line><line id=0NUIG2Lo y1=63 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=63 x1=0></line><line id=zdIHV2JG y1=0 x2=125 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=125></line><line id=4Zd5Ho5f y1=125 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=125 x1=0></line><line id=0TBRZItt y1=0 x2=187 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=187></line><line id=xpaUKdmc y1=187 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=187 x1=0></line><line id=s1HQN9vh y1=0 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=249></line><line id=smEN1z3X y1=249 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=0></line></g><g id=points height=250 width=250><circle id=aHSG3e6U cx=62.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=187.5></circle><circle id=gJFSB3Yb cx=125.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=125.0></circle><circle id=dWNyr9b6 cx=187.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=62.5></circle><circle id=AqswEjNL cx=250.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=0.0></circle></g><g id=labels height=250 width=250><text id=u9shB894 y=240 style='fill: black;font-size: 10pt;' x=1>0</text><text id=rSyMlqC8 y=1 style='fill: black;font-size: 10pt;' x=0>4</text><text id=pCm9mTlc y=240 style='fill: black;font-size: 10pt;' x=63>1.0</text><text id=mT3agago y=63 style='fill: black;font-size: 10pt;' x=0>3.0</text><text id=RE460t0R y=240 style='fill: black;font-size: 10pt;' x=125>2.0</text><text id=HACnZeOC y=125 style='fill: black;font-size: 10pt;' x=0>2.0</text><text id=Hg6TUDmC y=240 style='fill: black;font-size: 10pt;' x=187>3.0</text><text id=KFZlMUQL y=187 style='fill: black;font-size: 10pt;' x=0>1.0</text><text id=oi4GH9yY y=240 style='fill: black;font-size: 10pt;' x=249>4.0</text><text id=NWkHy6b2 y=249 style='fill: black;font-size: 10pt;' x=0>0.0</text></g><g id=axislabels height=250 width=250></g></g></svg>"
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
"<svg id=window height=500 width=500><g id=grid height=250 width=500><line id=MWIvKPmz y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=1></line><line id=NcZMRkp6 y1=1 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=8kuxNtwP y1=0 x2=126 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=126></line><line id=x2Y9dU9D y1=63 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=63 x1=0></line><line id=SPg0UVof y1=0 x2=251 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=251></line><line id=DRnjC4bD y1=125 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=125 x1=0></line><line id=60x7FOpE y1=0 x2=376 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=376></line><line id=VycgBTul y1=187 x2=500 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=187 x1=0></line></g><g id=grid2 height=250 width=500><line id=xQ5umRtV y1=250 x2=1 style='stroke: pink;' y2=500 x1=1></line><line id=9XyHYUDX y1=251 x2=500 style='stroke: pink;' y2=251 x1=0></line><line id=W7SmMcyz y1=250 x2=126 style='stroke: pink;' y2=500 x1=126></line><line id=jaXP7dgV y1=313 x2=500 style='stroke: pink;' y2=313 x1=0></line><line id=P8ocR1Xv y1=250 x2=251 style='stroke: pink;' y2=500 x1=251></line><line id=UOf9mcvZ y1=375 x2=500 style='stroke: pink;' y2=375 x1=0></line><line id=g7GZLlBW y1=250 x2=376 style='stroke: pink;' y2=500 x1=376></line><line id=Ezxv6yKe y1=437 x2=500 style='stroke: pink;' y2=437 x1=0></line></g><text id=iEzUGdn9 y=250 style='fill: black;font-size: 13pt;' x=230>hello!</text></svg>"
==#
#==|||==#
layers(mycon)
#==output[code]
3-element Vector{Pair{Int64, String}}:
 1 => "grid"
 2 => "grid2"
 3 => "iEzUGdn9"
==#
#==|||==#
myframe = context(500, 250) do con::Context
    group(con, 250, 250) do g::Group
        Gattino.scatter_plot!(g, [1, 2, 3, 4], [1, 2, 3, 4])
    end
end

#==output[code]
"<svg id=window height=250 width=500><g id=axes height=250 width=250><line id=JveHPPfq y1=250 x2=250 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line><line id=UtMob90T y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line></g><g id=grid height=250 width=250><line id=nInD84vo y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=1></line><line id=yEfUhGil y1=1 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=FSqcQiDF y1=0 x2=63 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=63></line><line id=q4442UYg y1=63 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=63 x1=0></line><line id=SUDzBcBy y1=0 x2=125 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=125></line><line id=mGX9wk7c y1=125 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=125 x1=0></line><line id=JcAGMKIL y1=0 x2=187 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=187></line><line id=qPikrrUg y1=187 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=187 x1=0></line><line id=o4S6xygI y1=0 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=249></line><line id=P2yRxdvF y1=249 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=0></line></g><g id=points height=250 width=250><circle id=Ev76pT4C cx=62.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=187.5></circle><circle id=z1cUbV0A cx=125.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=125.0></circle><circle id=I0c8M6MI cx=187.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=62.5></circle><circle id=oTzyimzX cx=250.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=0.0></circle></g><g id=labels height=250 width=250><text id=mY92t9dC y=240 style='fill: black;font-size: 10pt;' x=1>0</text><text id=gURmpSZA y=1 style='fill: black;font-size: 10pt;' x=0>4</text><text id=cGBcuxL3 y=240 style='fill: black;font-size: 10pt;' x=63>1.0</text><text id=FRCNy61G y=63 style='fill: black;font-size: 10pt;' x=0>3.0</text><text id=Y5w3beWm y=240 style='fill: black;font-size: 10pt;' x=125>2.0</text><text id=pjX0Tzm7 y=125 style='fill: black;font-size: 10pt;' x=0>2.0</text><text id=EY8hng17 y=240 style='fill: black;font-size: 10pt;' x=187>3.0</text><text id=e7M5AIWq y=187 style='fill: black;font-size: 10pt;' x=0>1.0</text><text id=jVJx0KSl y=240 style='fill: black;font-size: 10pt;' x=249>4.0</text><text id=Ck2K8sgV y=249 style='fill: black;font-size: 10pt;' x=0>0.0</text></g><g id=axislabels height=250 width=250></g></svg>"
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
"<svg id=window height=250 width=500><g id=axes height=250 width=250><line id=JveHPPfq y1=250 x2=250 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line><line id=UtMob90T y1=0 x2=0 style='fill: none;stroke: black;stroke-width: 4;' y2=250 x1=0></line></g><g id=grid height=250 width=250><line id=nInD84vo y1=0 x2=1 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=1></line><line id=yEfUhGil y1=1 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=1 x1=0></line><line id=FSqcQiDF y1=0 x2=63 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=63></line><line id=q4442UYg y1=63 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=63 x1=0></line><line id=SUDzBcBy y1=0 x2=125 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=125></line><line id=mGX9wk7c y1=125 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=125 x1=0></line><line id=JcAGMKIL y1=0 x2=187 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=187></line><line id=qPikrrUg y1=187 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=187 x1=0></line><line id=o4S6xygI y1=0 x2=249 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=250 x1=249></line><line id=P2yRxdvF y1=249 x2=250 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=249 x1=0></line></g><g id=points height=250 width=250><circle id=Ev76pT4C cx=62.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=187.5></circle><circle id=z1cUbV0A cx=125.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=125.0></circle><circle id=I0c8M6MI cx=187.5 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=62.5></circle><circle id=oTzyimzX cx=250.0 style='fill: orange;stroke: lightblue;stroke-width: 0;' r=5 cy=0.0></circle></g><g id=labels height=250 width=250><text id=mY92t9dC y=240 style='fill: black;font-size: 10pt;' x=1>0</text><text id=gURmpSZA y=1 style='fill: black;font-size: 10pt;' x=0>4</text><text id=cGBcuxL3 y=240 style='fill: black;font-size: 10pt;' x=63>1.0</text><text id=FRCNy61G y=63 style='fill: black;font-size: 10pt;' x=0>3.0</text><text id=Y5w3beWm y=240 style='fill: black;font-size: 10pt;' x=125>2.0</text><text id=pjX0Tzm7 y=125 style='fill: black;font-size: 10pt;' x=0>2.0</text><text id=EY8hng17 y=240 style='fill: black;font-size: 10pt;' x=187>3.0</text><text id=e7M5AIWq y=187 style='fill: black;font-size: 10pt;' x=0>1.0</text><text id=jVJx0KSl y=240 style='fill: black;font-size: 10pt;' x=249>4.0</text><text id=Ck2K8sgV y=249 style='fill: black;font-size: 10pt;' x=0>0.0</text></g><g id=axislabels height=250 width=250></g><line id=xj3w2Dg6 y1=0 x2=251 style='stroke: pink;' y2=250 x1=251></line><line id=0SE1mY5g y1=1 x2=500 style='stroke: pink;' y2=1 x1=250></line><line id=BgRNX8Ut y1=0 x2=313 style='stroke: pink;' y2=250 x1=313></line><line id=4qpsU9se y1=63 x2=500 style='stroke: pink;' y2=63 x1=250></line><line id=bdG3Fu2p y1=0 x2=375 style='stroke: pink;' y2=250 x1=375></line><line id=ENl3Ocgg y1=125 x2=500 style='stroke: pink;' y2=125 x1=250></line><line id=iMnuWbeI y1=0 x2=437 style='stroke: pink;' y2=250 x1=437></line><line id=8ZW1r0u1 y1=187 x2=500 style='stroke: pink;' y2=187 x1=250></line><line id=kL0IduUA y1=0 x2=499 style='stroke: pink;' y2=250 x1=499></line><line id=ePLcX3oB y1=249 x2=500 style='stroke: pink;' y2=249 x1=250></line></svg>"
==#
#==|||==#
"""#### styling a layer
Our visualizations look **ugly** with the default `Gattino` styles -- so let's change them!

"""
#==|||==#
layers(myhist)
#==output[code]
7-element Vector{Pair{Int64, String}}:
 1 => "XS3ms8yi"
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
"<svg id=window height=500 width=500><text id=XS3ms8yi y=40 style='fill: black;font-size: 15pt;' x=175>votes for names</text><g id=title height=500 width=500></g><g id=axes height=375 width=375><line id=h3T1TzN1 y1=435 x2=435 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line><line id=JGCu8Kck y1=60 x2=60 style='fill: none;stroke: black;stroke-width: 4;' y2=435 x1=60></line></g><g id=grid height=375 width=375><line id=LMmyB99B y1=60 x2=61 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=61></line><line id=TFYZmdPT y1=61 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=61 x1=60></line><line id=HMI098QU y1=60 x2=186 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=186></line><line id=7pDqKjb8 y1=186 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=186 x1=60></line><line id=peK8MQr9 y1=60 x2=311 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=435 x1=311></line><line id=UQgtDG1p y1=311 x2=435 style='fill: none;stroke: lightblue;stroke-width: 1;opacity: 80%;' y2=311 x1=60></line></g><g id=bars height=375 width=375><rect id=4pp3BHXW width=125 y=105 height=330 style='fill: none;stroke: black;stroke-width: 4;fill: orange;opacity: 70%;' x=60></rect><rect id=DMc5SrWT width=125 y=60 height=375 style='fill: none;stroke: black;stroke-width: 4;fill: orange;opacity: 70%;' x=185></rect><rect id=15KFnSJF width=125 y=225 height=210 style='fill: none;stroke: black;stroke-width: 4;fill: orange;opacity: 70%;' x=310></rect></g><g id=labels height=375 width=375><text id=5L5t6Rli y=300 style='fill: black;font-size: 11pt;stroke-width: 0px;fill: white;font-weight: bold;' x=80>emma</text><text id=4kHYpLyq y=300 style='fill: black;font-size: 11pt;stroke-width: 0px;fill: white;font-weight: bold;' x=205>emmy</text><text id=kZlkHYnX y=300 style='fill: black;font-size: 11pt;stroke-width: 0px;fill: white;font-weight: bold;' x=330>em</text><text id=KvzdfhZ8 y=99 style='fill: black;font-size: 10pt;stroke-width: 0px;fill: white;font-weight: bold;' x=79>25</text><text id=esiUdqBh y=224 style='fill: black;font-size: 10pt;stroke-width: 0px;fill: white;font-weight: bold;' x=79>17</text><text id=2VdsS1sU y=349 style='fill: black;font-size: 10pt;stroke-width: 0px;fill: white;font-weight: bold;' x=79>9</text></g><g id=axislabels height=375 width=375></g></svg>"
==#
#==|||==#
"""#### working with layers

"""
#==|||==#
layers(myhist)
#==output[code]
7-element Vector{Pair{Int64, String}}:
 1 => "XS3ms8yi"
 2 => "title"
 3 => "axes"
 4 => "grid"
 5 => "bars"
 6 => "labels"
 7 => "axislabels"
==#
#==|||==#
barlayer = myhist["bars"]
#==output[code]
"<g id=bars height=375 width=375><rect id=4pp3BHXW width=125 y=105 height=330 style='fill: none;stroke: black;stroke-width: 4;fill: orange;opacity: 70%;' x=60></rect><rect id=DMc5SrWT width=125 y=60 height=375 style='fill: none;stroke: black;stroke-width: 4;fill: orange;opacity: 70%;' x=185></rect><rect id=15KFnSJF width=125 y=225 height=210 style='fill: none;stroke: black;stroke-width: 4;fill: orange;opacity: 70%;' x=310></rect></g>"
==#
#==|||==#
