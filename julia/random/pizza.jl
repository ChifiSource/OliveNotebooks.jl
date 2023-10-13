using Toolips
mypizza = "https://media.istockphoto.com/id/496546118/photo/slice-of-fresh-italian-classic-original-pepperoni-pizza-isolated.jpg?s=612x612&amp;w=0&amp;k=20&amp;c=7aYapAwoe4fO5jRiNMIFiflIztcBAA8s-GLqAmBiSgA="

#==output[code]
"https://media.istockphoto.com/id/496546118/photo/slice-of-fresh-italian-classic-original-pepperoni-pizza-isolated.jpg?s=612x612&amp;w=0&amp;k=20&amp;c=7aYapAwoe4fO5jRiNMIFiflIztcBAA8s-GLqAmBiSgA="
==#
#==|||==#
container = div("pizzatray", align = "center")
pizza_heading = h("pizzaheading", 2, text = " i'm not pizza-ing around")
pizza = img("mypizza", src = mypizza)
push!(container, pizza, pizza_heading)
container

#==output[code]
"<div id=pizzatray align=center><img id=mypizza src=https://media.istockphoto.com/id/496546118/photo/slice-of-fresh-italian-classic-original-pepperoni-pizza-isolated.jpg?s=612x612&amp;w=0&amp;k=20&amp;c=7aYapAwoe4fO5jRiNMIFiflIztcBAA8s-GLqAmBiSgA=></img><h2 id=pizzaheading> i'm not pizza-ing around</h2></div>"
==#
#==|||==#
