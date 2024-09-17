function check_char(c)
    try 
        parse(Int,c)
        true
    catch
        false
    end
end
function searchFile(filename)
    value =0
    open(filename,"r")
    for line in eachline(filename)
        m=[]
       for c in line
            if isdigit(c)
                push!(m,c)
            end
        end 
        if length(m)>0
            first = m[1]
            last =  m[end]
            value += parse(Int,string(first,last))
        end
    end
    return value
end

function main()
  searchFile("ExampleText.txt")
end
main()