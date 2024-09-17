x = 1 
y = 3 
x = x + y
println(x)

hello = "Hello "
world = "World"
helloworld = string(hello,world)
println(helloworld)

array = [1,2,3,4]
push!(array,5)
println(array)

c = "c"
v = 'v'
println(typeof(c))
println(typeof(v))

darthplagues = """\"Did you ever hear the Tragedy of Darth Plagueis the Wise?\"
                \"No.\"
                \"I thought not. It's not a story the Jedi would tell you. It's a Sith legend.\"
                """
println(darthplagues)

help = "help"
me = "me"
helpme ="$help $me"
println(helpme)

for c in helpme
    println(c)
end

x = begin
    y = 1
    z = 2
    y + z
end
println()

println(x)
x = (y = 1; z = 2; y + z)
println(x)