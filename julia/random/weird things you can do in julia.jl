import Base: length

mutable struct MyRange{T &lt;: Real} 
    x::T 
    y::T 
end

length(mr::MyRange) = length(mr.x:mr.y)
#==output[code]
length (generic function with 96 methods)
==#
#==|||==#
import Base: (:)
#==output[code]

==#
#==|||==#
(:)(x::String, n::Number) = begin [println(x) for i in 1:n]; nothing end
#==output[code]
(::Colon) (generic function with 20 methods)
==#
#==|||==#
"hello":5
#==output[code]
hello<br>hello<br>hello<br>hello<br>hello<br>
==#
#==|||==#
(:)(vec::Vector{&lt;:Any}, f::Function) = [f(x) for x in vec]
#==output[code]
(::Colon) (generic function with 21 methods)
==#
#==|||==#
[5]:x -&gt; x += 5
#==output[code]
1-element Vector{Int64}:
 10    
==#
#==|||==#
x = ["hello", "hi"]
#==output[code]
2-element Vector{String}:
 "hello"
 "hi"
==#
#==|||==#
import Base: getindex
getindex(vec::Vector{&lt;:Any}, f::Function) = begin
    vec[findfirst(f, vec)]
end
#==output[code]
getindex (generic function with 260 methods)
==#
#==|||==#
x[s -&gt; s == "hi"]
#==output[code]
"hi"                            
==#
#==|||==#
vec = [1, 2]
#==output[code]
2-element Vector{Int64}:
 1
 2  
==#
#==|||==#
abstract type ModelType end

abstract type Categorical &lt;: ModelType end

abstract type Classifier &lt;: Categorical end

abstract type Continuous &lt;: ModelType end

abstract type AbstractModel end

mutable struct Model{T &lt;: Any} &lt;: AbstractModel
    data::Dict{String, Any}
    Model{T}() where {T &lt;: ModelType} = new{T}(Dict{String, Any}())
end
#==output[code]

==#
#==|||==#
function example()
x = 5
y = 2
()-&gt;(x;y)
end
#==output[code]
example (generic function with 1 method)
==#
#==|||==#
stuff = example()
#==output[code]
#9 (generic function with 1 method)
==#
#==|||==#
stuff.x
#==output[code]
5                               
==#
#==|||==#
stuff.y
#==output[code]
2                               
==#
#==|||==#
x = [5, 10, 15]

if 5 in x
    println("it's in")
end
#==output[code]
it's in<br>
==#
#==|||==#
mutable struct Example
    id::String
end
#==output[code]

==#
#==|||==#
vec = [Example("1"), Example("2"), Example("3")]
#==output[code]
3-element Vector{Main.DnDDsWCGp.Example}:
 Main.DnDDsWCGp.Example("1")
 Main.DnDDsWCGp.Example("2")
 Main.DnDDsWCGp.Example("3")
==#
#==|||==#
found = findfirst(example::Example -&gt; example.id == "3", vec)
if ~(isnothing(found))
    println("3 is in the Vector!")
end
#==output[code]
3 is in the Vector!<br>
==#
#==|||==#
import Base: in

in(id::String, exvec::Vector{Example}) = begin
    ~(isnothing(findfirst(e -&gt; e.id == id, exvec)))
end
#==output[code]
in (generic function with 43 methods)
==#
#==|||==#
"3" in vec
#==output[code]
true                            
==#
#==|||==#
baremodule Examp

end
#==output[code]
syntax: "module" expression not at top level
==#
#==|||==#
Examp.Vector
#==output[code]
UndefVarError: `Examp` not defined
==#
#==|||==#
module Normal

end
#==output[code]
syntax: "module" expression not at top level
==#
#==|||==#
Normal.Vector
#==output[code]
UndefVarError: `Normal` not defined
==#
#==|||==#
using Markdown
#==output[code]

==#
#==|||==#
md"# hello world!"
#==output[code]
<div class="markdown"><h1>hello world&#33;</h1>
</div>
==#
#==|||==#
macro hello_str(s::String)
    println("hello $s !")
end
#==output[code]
@hello_str (macro with 1 method)
==#
#==|||==#
hello"world"
#==output[code]
hello world !<br>
==#
#==|||==#
