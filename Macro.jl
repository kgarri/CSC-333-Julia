macro reg_str(s)
    Regex(s)
end

function main()
    re = reg"tragic"
    str = "trag"
    m = match(re, str)
    if m == nothing
        println(true)
    else
        println(false)
    end
end
main()

