"""# welcome to julia!

Julia is a rather recently developed programming language designed primarily for Scientific Computing. Although many Julia users and much of Julia's ecosystem fits that context, Julia is a **general-purpose** programming language. Though the language is still young, it has been rising in popularity pretty rapidly over the past few years. That considered, now is a great time to get started with the Julia programming language! Without further ado, let's get started by looking at variables.

```julia
x = 5

```
"""
#==|||==#
# this code sets `x` to 5!
x = 5
#==output[code]
5                               
==#
#==|||==#
"""#### once a variable is assigned, it can be used again.

"""
#==|||==#
x
#==output[code]
5                               
==#
#==|||==#
# we can use the variable with basic math.
x + 5

#==output[code]
10                              
==#
#==|||==#
"""In the example above, we increased `x` by `5` by using `+`. `+` is what is called an operator. An **operator** has no strict definition, but is described as a function that changes elements of a space to produce a return. This type of operation, where we take some type of inputs and produce a return is also called a `function`. Functions are the backbone of programming and software, they describe any routine which a computer does through logical processing. The key takeaway from this is that a **function** takes some input and produces some output. We create a function with the key-word `function`. After this we provide the function's name, followed by a set of parenthesis. These parenthesis denote our input and are necessary whether we have input or not. After our function, we will also need to put an `end`.

"""
#==|||==#
function myfunction()

end

#==output[code]
myfunction (generic function with 1 method)
==#
#==|||==#
"""Now let's provide input to our function. Our input arguments are provided within these parenthesis and separated by commas.

"""
#==|||==#
function myfunction(x, y)

end

#==output[code]
myfunction (generic function with 2 methods)
==#
#==|||==#
"""These arguments become our variables inside of the function. For this example, we will make `myfunction` add `x` and `y`.
"""
#==|||==#
function myfunction(x, y)
    x + y
end

#==output[code]
myfunction (generic function with 2 methods)
==#
#==|||==#
"""This function now produces a return. Whenever we set `x = 5` in the example before, we got the return of `5` -- a data-type, and this return was placed into `x`. We use the **assertion operator**, `=`, for this. That in mind, let's call our function with 2 numbers and set something equal to its result. We call the function here exactly how its input looks.

"""
#==|||==#
summation = myfunction(5, 5)
#==output[code]
10                              
==#
#==|||==#
"""We are also able to call functions that already exist in this same way, providing the arguments. One example of such a function is `println`, which can take anything in julia as an argument.
"""
#==|||==#
println("hello!")
#==output[code]
hello!<br>
==#
#==|||==#
"""Whenever we create a new function, we create a new private scope that only exists for the time that function is called. For instance, even though `y` is defined in `myfunction` above, we do not have access to it outside of that function.


"""
#==|||==#
y
#==output[code]
UndefVarError: `y` not defined  
==#
#==|||==#
# now something more complicated
function make_z(x, y)
   z = x + y
   return(x, y, z)
end

#==output[code]
make_z (generic function with 1 method)
==#
#==|||==#
"""In the example above, we used the `return` method to return our different values as a `Tuple`. `return` is used to stop a function.


"""
#==|||==#
myret = make_z(5, 5)
#==output[code]
(5, 5, 10)                      
==#
#==|||==#
x, y, z = make_z(5, 5)
#==output[code]
(5, 5, 10)                      
==#
#==|||==#
println("$x\n$y\n$z")
#==output[code]
5<br>5<br>10<br>
==#
#==|||==#
"""`return` comprises the output part of our function, whereas the arguments we put in the parenthesis comprise our output. There are also multiple different types of arguments we have at our disposal, the arguments we have used thus far in our examples are **non-optional positional arguments**. This means that the argument must be provided to run the function and is denoted by its position. We also have **optional positional arguments** which are positional arguments that have a default. We set this default by asserting the argument equal to something.


"""
#==|||==#
function functionname(position1, position2option = "hello")
    println(position2option)
end

#==output[code]
functionname (generic function with 2 methods)
==#
#==|||==#
functionname(5, "hi")
#==output[code]
hi<br>
==#
#==|||==#
functionname()
#==output[code]
MethodError: no method matching functionname()</br></br>Closest candidates are:</br>  functionname(!Matched::Any)</br>   @ Main.qBfTKeWtY none:2</br>  functionname(!Matched::Any, !Matched::Any)</br>   @ Main.qBfTKeWtY none:2</br>
==#
#==|||==#
functionname(5)
#==output[code]
hello<br>
==#
#==|||==#
# we cannot do this!
function examp(x = 5, y)

end

#==output[code]
syntax: optional positional arguments must occur at end
==#
#==|||==#
"""The last type of argument we will discuss in this notebook is the **key-word** argument. These arguments are provided to the function by name when it is called. We denote the separation between these in and the positional arguments with a `;`. These arguments must have a default, as key-word arguments are not intended to be necessary to run the function. The priority here is easy to understand, the highest priority -- the main arguments we need for the function to run -- should be positional arguments. The most important of these should be those which are not optional.

"""
#==|||==#
function example()
    
end

#==output[code]

==#
#==|||==#
"""### annotations

In the next lesson, we will be reviewing an important concept in most programming languages, and especially julia; **Types**. With this familiarity we will also be associating those types with functions. The last thing we should review on the front of functions to facilitate this is the concept of type annotations. In Julia `1.8+`, we can annotate any variable's type whether it is global or otherwise. 
"""
#==|||==#
mynumber::Int64 = 5
#==output[code]
5                               
==#
#==|||==#
"""The **Type** of your variable in Julia will not be arbitrary at all. Our type is determined by what our variable is composed of. This **type** is important because it will determine how Julia is able to use our variable. For example, we cannot add a `String` and an `Int64`

"""
#==|||==#
5 + "hi"
#==output[code]
MethodError: no method matching +(::Int64, ::String)</br></br>Closest candidates are:</br>  +(::Any, ::Any, !Matched::Any, !Matched::Any...)</br>   @ Base operators.jl:578</br>  +(::T, !Matched::T) where T<:Union{Int128, Int16, Int32, Int64, Int8, UInt128, UInt16, UInt32, UInt64, UInt8}</br>   @ Base int.jl:87</br>  +(::Union{Int16, Int32, Int64, Int8}, !Matched::BigInt)</br>   @ Base gmp.jl:545</br>  ...</br>
==#
#==|||==#
typeof(5)
#==output[code]
Int64                           
==#
#==|||==#
typeof("hello")
#==output[code]
String                          
==#
#==|||==#
typeof('h')
#==output[code]
Char                            
==#
#==|||==#
typeof(5.5)
#==output[code]
Float64                         
==#
#==|||==#
typeof(true)
#==output[code]
Bool                            
==#
#==|||==#


#==output[code]

==#
#==|||==#
