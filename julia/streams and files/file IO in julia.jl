o = IOBuffer()
#==output[code]

==#
#==|||==#
write(o, "hello")
println(o, " world!")
#==output[code]

==#
#==|||==#
s = take!(o)
#==output[code]

==#
#==|||==#
s = String(s)
#==output[code]

==#
#==|||==#
using Toolips
#==output[code]

==#
#==|||==#
mycomp = a("helloa", text = "hi")
#==output[code]

==#
#==|||==#
show(o, "text/html", mycomp)
#==output[code]

==#
#==|||==#
String(take!(o))
#==output[code]

==#
#==|||==#
touch("example.txt")
#==output[code]

==#
#==|||==#
open("example.txt", "w") do o::IO
    println(o, "example text")
end
#==output[code]

==#
#==|||==#
open("example.txt", "r") do i::IO
    println(read(i, String))
end
#==output[code]

==#
#==|||==#
read("example.txt", String)
#==output[code]

==#
#==|||==#
using Pkg; Pkg.add("CSV")
#==output[code]

==#
#==|||==#
using CSV
#==output[code]

==#
#==|||==#
methods(CSV.read)
#==output[code]

==#
#==|||==#
Pkg.add("FileIO")
#==output[code]

==#
#==|||==#
Pkg.add("Images")
#==output[code]

==#
#==|||==#
using Images
using FileIO
#==output[code]

==#
#==|||==#
?FileIO.add_format
#==output[code]

==#
#==|||==#
newimg = load("../../image_dump/chi.png")
#==output[code]

==#
#==|||==#
