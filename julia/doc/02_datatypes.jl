"""## data-types in julia
In programming, data-types are the essential forms of data which come together to create data structures and then more complicated applications. 
Anytime a variable is assigned a value in a programming language, a new object is created and that new object has a `Type`. The `Type` of an object 
tells our system of algorithms, **functions** how to work with the structure of the data provided. Data-types are the essential forms of types which are
able to be comprised into bytes and used by our compiler and interpreter. The **most essential** of these are ...
- `Bool`
- `String`
- `Int64`
- `Float64`
- `Char`
"""
#==|||==#
bool = true
str = "hello"
num = 5
flt = 5.55
chr = 'h'

#==output[code]
'h': ASCII/Unicode U+0068 (category Ll: Letter, lowercase)
==#
#==|||==#
num + flt
#==output[code]
10.55                           
==#
#==|||==#
bool
#==output[code]
true                            
==#
#==|||==#
"""**this is a trick** -- a `String` is actually just a data-structure which contains chars. We can think of this as a list of elements. Here I use code, (which can be ignored for now), to print the type of 
each `Char` in the `String` as well as the character itself. We are able to recieve the type, for the record, using the `typeof` function.
"""
#==|||==#
[println(typeof(c) =&gt; c) for c in str]
nothing

#==output[code]
Char => 'h'<br>Char => 'e'<br>Char => 'l'<br>Char => 'l'<br>Char => 'o'<br>
==#
#==|||==#
"""#### julia is dynamically and strongly typed
The typing in Julia is very explicit -- this means that if we are going to want to do anything with a given object in Julia we are probably 
going to want to be aware of its type. Now that we have a basic knowledge of type, let's try combining this with the previous julia 
overview on functions. Let's write a basic function and assign some variables to different data-types within it.
"""
#==|||==#
              # x is an Integer
function myfunc(x = 5)
   # Integer + integer addition
   x += 5
   # we can add any type of `Real` number
   println()
end

#==output[code]
myfunc (generic function with 2 methods)
==#
#==|||==#
"""*In the next overview, we will be going over ...*
#### paradigm, types, and methods
A crucial concept to understand in high-level programming languages like Julia is paradigm. A **programming paradigm** refers to how the functions in 
a language interact with the data or structures that hold data in a language. In the case of Julia, the language is *somewhat unique* and uses 
multiple dispatch as a programming paradigm. Multiple dispatch is the ability to create multiple methods for a function depending on a function's type.

Understanding multiple dispatch is the key to understanding Julia. Using multiple dispatch, we can pretty easily condense code into really useful APIs that contain very little code. The paradigm itself is powerful, but also rather novel -- that being said, let's take  a look at the basics of multiple dispatch.

We create a new method for a given function by simply **writing a new function and annotating the type of its arguments**...
"""
#==|||==#
function example(x::Int64, y::Int64)
    println("integer example")

end

#==output[code]
example (generic function with 1 method)
==#
#==|||==#
function example(x::String, y::String)
    println("string example")

end

#==output[code]
example (generic function with 2 methods)
==#
#==|||==#
methods(example)
#==output[code]
# 2 methods for generic function <b>example</b> from Main.JGSZyXRs:<ul><li> example(x::<b>Int64</b>, y::<b>Int64</b>) in Main.JGSZyXRs at none:2</li> <li> example(x::<b>String</b>, y::<b>String</b>) in Main.JGSZyXRs at none:2</li> </ul>
==#
#==|||==#
example(1, 2)
#==output[code]
integer example<br>
==#
#==|||==#
example("hello", "goodbye")
#==output[code]
string example<br>
==#
#==|||==#
