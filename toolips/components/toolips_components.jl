"""# Toolips Components
`Toolips` Components are composable, let's take a look at some code which demonstrates how to use these Components!
"""
#==|||==#
using Toolips
#==output[code]

==#
#==|||==#
mydiv = div("mydiv", align = "center")
#==output[code]
"<div id=mydiv align=center></div>"
==#
#==|||==#
mydiv[:align]
#==output[code]
"center"                        
==#
#==|||==#
println(typeof(mydiv))
#==output[code]
Component{:div}<br>
==#
#==|||==#
maindiv = div("maindiv")
name_heading = h("nameheading", 2, text = "hello ! what is your name?")
push!(maindiv, name_heading)

#==output[code]
1-element Vector{Vector{Servable}}:
 [Component{:h2}("nameheading", Dict{Any, Any}(:children => Servable[], :text => "hello ! what is your name?"), Servable[], "h2")]
==#
#==|||==#
style!(maindiv, "border-radius" => 2px, "border-color" => "darkgray", "border-style" => "solid")
#==output[code]
"'border-radius: 2px;border-color: darkgray;border-style: solid;'"
==#
#==|||==#
style!(name_heading, "color" => "purple", "font-weight" => "bold", "font-size" => 13pt)
#==output[code]
"'color: purple;font-weight: bold;font-size: 13pt;'"
==#
#==|||==#
maindiv
#==output[code]
"<div id=maindiv style='border-radius: 2px;border-color: darkgray;border-style: solid;'><h2 id=nameheading style='color: purple;font-weight: bold;font-size: 13pt;'>hello ! what is your name?</h2></div>"
==#
#==|||==#
style!(maindiv, "border-radius" => 5px, "padding" => 20px)
#==output[code]
"'border-radius: 2px;border-color: darkgray;border-style: solid;border-radius: 5px;padding: 20px;'"
==#
#==|||==#
maindiv
#==output[code]
"<div id=maindiv style='border-radius: 2px;border-color: darkgray;border-style: solid;border-radius: 5px;padding: 20px;'><h2 id=nameheading style='color: purple;font-weight: bold;font-size: 13pt;'>hello ! what is your name?</h2></div>"
==#
#==|||==#
button_txtbox = div("buttntxt")
style!(button_txtbox, "display" => "flex", "border-radius" => 2px)

#==output[code]
"'display: flex;border-radius: 2px;'"
==#
#==|||==#
push!(maindiv, button_txtbox)
#==output[code]
1-element Vector{Vector{Servable}}:
 [Component{:h2}("nameheading", Dict{Any, Any}(:children => Servable[], "style" => "'color: purple;font-weight: bold;font-size: 13pt;'", :text => "hello ! what is your name?"), Servable[], "h2"), Component{:div}("buttntxt", Dict{Any, Any}(:children => Servable[], "style" => "'display: flex;border-radius: 2px;'"), Servable[], "div")]
==#
#==|||==#
# now we will do the inside
namebox = div("namebox", contenteditable = true)

#==output[code]
"<div id=namebox contenteditable=true></div>"
==#
#==|||==#
style!(namebox, "border" => "2px solid", "border-color" => "purple","border-top-right-radius" => 0px, 
"border-bottom-right-radius" => 0px, "width" => 70percent)
#==output[code]
"'border: 2px solid;border-color: purple;border-top-right-radius: 0px;border-bottom-right-radius: 0px;width: 70%;'"
==#
#==|||==#
confirmbutton = button("confirmbutton", text = "enter")
style!(confirmbutton, "background-color" => "purple", "color" => "white","border-top-right-radius" => 7px,
"border-bottom-right-radius" => 7px, "border-top-left-radius" => 0px, "border-bottom-left-radius" => 0px)

#==output[code]
"'background-color: purple;color: white;border-top-right-radius: 7px;border-bottom-right-radius: 7px;border-top-left-radius: 0px;border-bottom-left-radius: 0px;'"
==#
#==|||==#
push!(button_txtbox, namebox, confirmbutton)
#==output[code]
2-element Vector{Vector{Servable}}:
 [Component{:div}("namebox", Dict{Any, Any}(:children => Servable[], :contenteditable => true, "style" => "'border: 2px solid;border-color: purple;border-top-right-radius: 0px;border-bottom-right-radius: 0px;width: 70%;'"), Servable[], "div"), Component{:button}("confirmbutton", Dict{Any, Any}(:children => Servable[], "style" => "'background-color: purple;color: white;border-top-right-radius: 7px;border-bottom-right-radius: 7px;border-top-left-radius: 0px;border-bottom-left-radius: 0px;'", :text => "enter"), Servable[], "button")]
 [Component{:div}("namebox", Dict{Any, Any}(:children => Servable[], :contenteditable => true, "style" => "'border: 2px solid;border-color: purple;border-top-right-radius: 0px;border-bottom-right-radius: 0px;width: 70%;'"), Servable[], "div"), Component{:button}("confirmbutton", Dict{Any, Any}(:children => Servable[], "style" => "'background-color: purple;color: white;border-top-right-radius: 7px;border-bottom-right-radius: 7px;border-top-left-radius: 0px;border-bottom-left-radius: 0px;'", :text => "enter"), Servable[], "button")]
==#
#==|||==#
maindiv
#==output[code]
"<div id=maindiv style='border-radius: 2px;border-color: darkgray;border-style: solid;border-radius: 5px;padding: 20px;'><h2 id=nameheading style='color: purple;font-weight: bold;font-size: 13pt;'>hello ! what is your name?</h2><div id=buttntxt style='display: flex;border-radius: 2px;'><div id=namebox contenteditable=true style='border: 2px solid;border-color: purple;border-top-right-radius: 0px;border-bottom-right-radius: 0px;width: 70%;'></div><button id=confirmbutton style='background-color: purple;color: white;border-top-right-radius: 7px;border-bottom-right-radius: 7px;border-top-left-radius: 0px;border-bottom-left-radius: 0px;'>enter</button></div></div>"
==#
#==|||==#

Pkg.add("ToolipsSession", )
#==output[pkgrepl]
add ToolipsSession
==#
#==|||==#
using ToolipsSession
on(confirmbutton, "click") do cl::ClientModifier
    alert!(cl, "hello!")
end

#==output[code]
"<script id=docclick>alert('hello!');</script>"
==#
#==|||==#
maindiv
#==output[code]
"<div id=maindiv style='border-radius: 2px;border-color: darkgray;border-style: solid;border-radius: 5px;padding: 20px;'><h2 id=nameheading style='color: purple;font-weight: bold;font-size: 13pt;'>hello ! what is your name?</h2><div id=buttntxt style='display: flex;border-radius: 2px;'><div id=namebox contenteditable=true style='border: 2px solid;border-color: purple;border-top-right-radius: 0px;border-bottom-right-radius: 0px;width: 70%;'></div><button id=confirmbutton onclick=`confirmbuttonclick();` style='background-color: purple;color: white;border-top-right-radius: 7px;border-bottom-right-radius: 7px;border-top-left-radius: 0px;border-bottom-left-radius: 0px;'>enter</button></div></div>"
==#
#==|||==#
"""## building a server
Now that we have our `Components`, we want callbacks. For this, we will quickly build a `WebServer`. For this, we require routes and extensions.
"""
#==|||==#
main = route("/") do c::Connection
    on(c, confirmbutton, "click") do cm::ComponentModifier
        alert!(cm, "hello world!")
    end
    write!(c, maindiv)
end

#==output[code]
route: /
                       
==#
#==|||==#
forof = route("404") do c::Connection
    write!(c, "not found!")
end

#==output[code]
route: 404
                     
==#
#==|||==#
ws = Toolips.WebServer("127.0.0.1", 8006, routes = [main, forof], extensions = [Session()])
#==output[code]
                                
==#
#==|||==#
ws.start()
#==output[code]
<br>
==#
#==|||==#
main.path
#==output[code]
"/"                             
==#
#==|||==#
kill!(ws)
#==output[code]

==#
#==|||==#
[println(name) for name in names(ToolipsSession, all = false)]
#==output[code]
ClientModifier<br>ComponentModifier<br>KeyMap<br>Session<br>ToolipsSession<br>alert!<br>animate!<br>append_first!<br>bind!<br>call!<br>close_rpc!<br>confirm_redirects!<br>disconnect_rpc!<br>find_client<br>focus!<br>free_redirects!<br>get_text<br>insert_child!<br>is_client<br>is_dead<br>is_host<br>join_rpc!<br>modify!<br>move!<br>next!<br>on<br>open_rpc!<br>pauseanim!<br>playanim!<br>redirect!<br>remove!<br>rpc!<br>script<br>script!<br>scroll_by!<br>scroll_to!<br>set_children!<br>set_selection!<br>set_text!<br>style!<br>update!<br></br>41-element Vector{Nothing}:
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
 nothing
==#
#==|||==#
