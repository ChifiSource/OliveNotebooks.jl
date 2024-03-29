"""## julia magic!
There are a lot of really neat things to love about the Julia programming language. Unfortunately, with so much complexity and so much to love it becomes easy to miss some really awesome things in the language! Here are some examples of lesser-known Julia magic which I think more people should use!
"""
#==|||==#
function remove!(vec::Vector{Int64}, index::Int64 = length(vec))

end

#==output[code]
remove! (generic function with 2 methods)
==#
#==|||==#
function example(x::Any)

end

#==output[code]
example (generic function with 1 method)
==#
#==|||==#
methods(example)
#==output[code]
# 1 method for generic function <b>example</b> from Main.NPaeMcfIjB:<ul><li> example(x) in Main.NPaeMcfIjB at none:2</li> </ul>
==#
#==|||==#
methods(example)[1].sig
#==output[code]
Tuple{typeof(Main.NPaeMcfIjB.example), Any}
==#
#==|||==#
import Base: cd
#==output[code]

==#
#==|||==#
Base.delete_method(methods(cd)[1])
#==output[code]

==#
#==|||==#
vec = Vector{Int64}([5, 10, 15, 20])
#==output[code]
4-element Vector{Int64}:
  5
 10
 15
 20
==#
#==|||==#
function example(vec::Vector{Int64} = [1, 2])

end

#==output[code]
example (generic function with 3 methods)
==#
#==|||==#
function example(vec::Vector{<:Real})

end

#==output[code]
example (generic function with 4 methods)
==#
#==|||==#
myvec = [x + 1 for x in 1:5]
#==output[code]
5-element Vector{Int64}:
 2
 3
 4
 5
 6
==#
#==|||==#
[begin 
    if x > 5
      true
    else
      false
    end
 end for x in myvec]

#==output[code]
5-element Vector{Bool}:
 0
 0
 0
 0
 1
==#
#==|||==#
exp = Meta.parse("x = 5")

eval(exp)

#==output[code]
5                               
==#
#==|||==#
x
#==output[code]
5                               
==#
#==|||==#
fieldnames(Expr)
#==output[code]
(:head, :args)                  
==#
#==|||==#
exp.head
#==output[code]
:(=)                            
==#
#==|||==#
exp.args
#==output[code]
2-element Vector{Any}:
  :x
 5  
==#
#==|||==#
