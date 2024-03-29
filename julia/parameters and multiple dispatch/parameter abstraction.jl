"""# parameter abstraction
Julia uses multiple dispatch to facilitate **abstraction** -- a vital generic programming concept which allows for the writing of generic methods to 
facilitate many types. With Julia, things are also taken a step further -- the language also allows us to apply the same abstraction to parameters.
"""
#==|||==#
using Statistics
#==output[code]

==#
#==|||==#
abstract type ModelType end

abstract type Categorical &lt;: ModelType end

abstract type Classifier &lt;: Categorical end

abstract type Continuous &lt;: ModelType end
#==output[code]

==#
#==|||==#
abstract type AbstractModel end

mutable struct Model{T &lt;: Any} &lt;: AbstractModel
    data::Dict{String, Any}
    Model{T}() where {T &lt;: ModelType} = new{T}(Dict{String, Any}())
end
#==output[code]

==#
#==|||==#
function accuracy(model::AbstractModel, testx::Vector{&lt;:Any}, testy::Vector{&lt;:Any})
    yhat::Vector{&lt;:Any} = predict(model, testx)
    bitmask::Vector{Bool} = [begin 
        if x == y 
           true
        else 
           false
        end
    end for (x, y) in zip(yhat, testy)]
    (length(bitmask) / length(findall(x -&gt; x, bitmask)))::Real
end
#==output[code]
accuracy (generic function with 1 method)
==#
#==|||==#
function accuracy(model::Model{&lt;:Continuous}, testx::Vector{&lt;:Any}, testy::Vector{&lt;:Any})
    yhat::Vector{&lt;:Any} = predict(model, testx)
    (cor(yhat, testy) ^ 2)::Number
end
#==output[code]
accuracy (generic function with 2 methods)
==#
#==|||==#
abstract type MajorityClass &lt;: Categorical end

abstract type MeanBaseline &lt;: Continuous end
#==output[code]

==#
#==|||==#
MajorityClass() = Model{MajorityClass}()
MeanBaseline() = Model{MeanBaseline}()
#==output[code]
Main.ehhXpfXcle.MeanBaseline    
==#
#==|||==#
function fit!(model::Model{MeanBaseline}, trainx::Vector{&lt;:Any}, trainy::Vector{&lt;:Any})
    push!(model.data, "mu" =&gt; Float64(sum(trainy) / length(trainy)))
end
#==output[code]
fit! (generic function with 1 method)
==#
#==|||==#
predict(model::Model{MeanBaseline}, testx) = begin
    if ~("mu" in keys(model.data))
        throw("this model has not been fitted to data yet. Use `fit!` first.")
    end
    mean::Real = model.data["mu"]
    [mean for x in testx]::Vector{&lt;:Any}
end
#==output[code]
predict (generic function with 1 method)
==#
#==|||==#
trainx = [5, 5, 6, 2, 3, 7, 5]
trainy = [5, 8, 4, 3, 3, 4, 6]
testx = [5, 6, 3, 4]
testy = [5, 7, 4, 4]
#==output[code]
4-element Vector{Int64}:
 5
 7
 4
 4
==#
#==|||==#
mymodel = MeanBaseline()
#==output[code]
Main.ehhXpfXcle.Model{Main.ehhXpfXcle.MeanBaseline}(Dict{String, Any}())
==#
#==|||==#
fit!(mymodel, trainx, trainy)

#==output[code]
Dict{String, Any} with 1 entry:
  "mu" => 4.71429
==#
#==|||==#
predict(mymodel, testx)

#==output[code]
4-element Vector{Float64}:
 4.714285714285714
 4.714285714285714
 4.714285714285714
 4.714285714285714
==#
#==|||==#
accuracy(mymodel, testx, testy)
#==output[code]
"this model has not been fitted to data yet. Use `fit!` first."
==#
#==|||==#
