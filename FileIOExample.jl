function searchFile(filename,name)
    file = open(filename, "r")
    for line in eachline(filename)
        println(line)
    end
    close(file)
end
function main()

    print("Enter your name: \n")
    name = readline()
    println(name)
    searchFile("Hello_World.txt")
end
main()
    