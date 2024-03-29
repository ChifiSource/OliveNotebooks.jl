"""## a review of scaling
Scaling is an important concept in modern software with usage that makes software far more *future-proof*. Let's demonstrate scaling and how it works to get a better understanding of the concept.
"""
#==|||==#
using Toolips
using ToolipsSVG

#==output[code]

==#
#==|||==#
display_div = div("display")
#==output[code]
"<div id=display></div>"        
==#
#==|||==#
style!(display_div, "width" => 500px, "height" => 500px,"border" => "2px solid lightgray")
#==output[code]
"'width: 500px;height: 500px;width: 500px;height: 500px;border: 2px solid lightgray;'"
==#
#==|||==#
display_div
#==output[code]
"<div id=display style='width: 500px;height: 500px;width: 500px;height: 500px;border: 2px solid lightgray;'></div>"
==#
#==|||==#
ourbox = div("ourbox")
#==output[code]
"<div id=ourbox></div>"         
==#
#==|||==#
style!(ourbox, "width" => 50percent, "background-color" => "darkgreen", "height" => 10percent)
#==output[code]
"'width: 50%;background-color: darkgreen;height: 10%;'"
==#
#==|||==#
push!(display_div, ourbox)
#==output[code]
1-element Vector{Vector{Toolips.Servable}}:
 [Toolips.Component{:div}("ourbox", Dict{Any, Any}(:children => Toolips.Servable[], "style" => "'width: 50%;background-color: darkgreen;height: 10%;'"), Toolips.Servable[], "div")]
==#
#==|||==#
display_div
#==output[code]
"<div id=display style='width: 500px;height: 500px;width: 500px;height: 500px;border: 2px solid lightgray;'><div id=ourbox style='width: 50%;background-color: darkgreen;height: 10%;'></div></div>"
==#
#==|||==#
"""#### writing our own scaling
now that we've seen basic high-level scaling, let's move onto making a function which scales for us.
"""
#==|||==#
x = [1, 2, 8, 4, 3, 5, 9]
y = [5, 6, 3, 4, 5, 5, 2]

#==output[code]
7-element Vector{Int64}:
 5
 6
 3
 4
 5
 5
 2
==#
#==|||==#
wind = svg("mywindow", width = 250, height = 250)
#==output[code]
"<svg id=mywindow height=250 width=250></svg>"
==#
#==|||==#
 wind[:children] = [begin
        c = circle("e", cx = string(pointx),cy = string(pointy), r = 5)
            style!(c, "stroke" => "blue")
            c::Component{<:Any}
        end for (pointx, pointy) in zip(x, y)]

#==output[code]
7-element Vector{Toolips.Component{:circle}}:
 Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "1", "style" => "'stroke: blue;'", :r => 5, :cy => "5"), Toolips.Servable[], "circle")
 Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "2", "style" => "'stroke: blue;'", :r => 5, :cy => "6"), Toolips.Servable[], "circle")
 Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "8", "style" => "'stroke: blue;'", :r => 5, :cy => "3"), Toolips.Servable[], "circle")
 Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "4", "style" => "'stroke: blue;'", :r => 5, :cy => "4"), Toolips.Servable[], "circle")
 Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "3", "style" => "'stroke: blue;'", :r => 5, :cy => "5"), Toolips.Servable[], "circle")
 Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "5", "style" => "'stroke: blue;'", :r => 5, :cy => "5"), Toolips.Servable[], "circle")
 Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "9", "style" => "'stroke: blue;'", :r => 5, :cy => "2"), Toolips.Servable[], "circle")
==#
#==|||==#
wind
#==output[code]
"<svg id=mywindow height=250 style='transform-origin: 0% 100%;;transform-origin: 100%;;transform-origin: center;' width=250><circle id=e cx=1 style='stroke: blue;' r=5 cy=5></circle><circle id=e cx=2 style='stroke: blue;' r=5 cy=6></circle><circle id=e cx=8 style='stroke: blue;' r=5 cy=3></circle><circle id=e cx=4 style='stroke: blue;' r=5 cy=4></circle><circle id=e cx=3 style='stroke: blue;' r=5 cy=5></circle><circle id=e cx=5 style='stroke: blue;' r=5 cy=5></circle><circle id=e cx=9 style='stroke: blue;' r=5 cy=2></circle></svg>"
==#
#==|||==#
function points!(window::Component{:svg}, x::Vector{<:Number}, y::Vector{<:Number},
     styles::Pair{String, <:Any} ...)
    if length(styles) == 0
        styles = ("fill" => "orange", "stroke" => "lightblue", "stroke-width" => "0")
    end
    xmax::Number, ymax::Number = maximum(x), maximum(y)
     percvec_x = map(n::Number -> n / xmax, x)
     percvec_y = map(n::Number -> n / ymax, y)
    [begin
        c = circle("e", cx = string(pointx * window[:width]),
                cy = string(window[:width] - (pointy * window[:height])), r = "5")
            style!(c, styles ...)
            push!(window, c)
        end for (pointx, pointy) in zip(percvec_x, percvec_y)]
end

#==output[code]
points! (generic function with 1 method)
==#
#==|||==#
wind = svg("mywindow", width = 250, height = 250)
#==output[code]
"<svg id=mywindow height=250 width=250></svg>"
==#
#==|||==#
points!(wind, [5, 10, 15, 20], [5, 10, 15, 20], "stroke" => "blue")
#==output[code]
4-element Vector{Vector{Vector{Toolips.Servable}}}:
 [[Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "62.5", "style" => "'stroke: blue;'", :r => "5", :cy => "62.5"), Toolips.Servable[], "circle"), Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "125.0", "style" => "'stroke: blue;'", :r => "5", :cy => "125.0"), Toolips.Servable[], "circle"), Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "187.5", "style" => "'stroke: blue;'", :r => "5", :cy => "187.5"), Toolips.Servable[], "circle"), Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "250.0", "style" => "'stroke: blue;'", :r => "5", :cy => "250.0"), Toolips.Servable[], "circle")]]
 [[Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "62.5", "style" => "'stroke: blue;'", :r => "5", :cy => "62.5"), Toolips.Servable[], "circle"), Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "125.0", "style" => "'stroke: blue;'", :r => "5", :cy => "125.0"), Toolips.Servable[], "circle"), Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "187.5", "style" => "'stroke: blue;'", :r => "5", :cy => "187.5"), Toolips.Servable[], "circle"), Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "250.0", "style" => "'stroke: blue;'", :r => "5", :cy => "250.0"), Toolips.Servable[], "circle")]]
 [[Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "62.5", "style" => "'stroke: blue;'", :r => "5", :cy => "62.5"), Toolips.Servable[], "circle"), Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "125.0", "style" => "'stroke: blue;'", :r => "5", :cy => "125.0"), Toolips.Servable[], "circle"), Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "187.5", "style" => "'stroke: blue;'", :r => "5", :cy => "187.5"), Toolips.Servable[], "circle"), Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "250.0", "style" => "'stroke: blue;'", :r => "5", :cy => "250.0"), Toolips.Servable[], "circle")]]
 [[Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "62.5", "style" => "'stroke: blue;'", :r => "5", :cy => "62.5"), Toolips.Servable[], "circle"), Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "125.0", "style" => "'stroke: blue;'", :r => "5", :cy => "125.0"), Toolips.Servable[], "circle"), Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "187.5", "style" => "'stroke: blue;'", :r => "5", :cy => "187.5"), Toolips.Servable[], "circle"), Toolips.Component{:circle}("e", Dict{Any, Any}(:children => Toolips.Servable[], :cx => "250.0", "style" => "'stroke: blue;'", :r => "5", :cy => "250.0"), Toolips.Servable[], "circle")]]
==#
#==|||==#
wind
#==output[code]
"<svg id=mywindow height=250 width=250><circle id=e cx=62.5 style='stroke: blue;' r=5 cy=62.5></circle><circle id=e cx=125.0 style='stroke: blue;' r=5 cy=125.0></circle><circle id=e cx=187.5 style='stroke: blue;' r=5 cy=187.5></circle><circle id=e cx=250.0 style='stroke: blue;' r=5 cy=250.0></circle></svg>"
==#
#==|||==#
