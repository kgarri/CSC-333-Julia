macro reg_str(s)
    Regex(s)
end

macro fib(n::Int)
    return :((n-1)+(n-2))
end

function fib(n::Int)
    return n-1+n-2
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

    @time @fib(4::Int)
    @time fib(4::Int)
end
main()

