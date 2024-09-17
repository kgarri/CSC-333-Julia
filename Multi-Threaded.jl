# This code snippet is from https://discourse.julialang.org/t/simple-recursive-fibonaci-example-how-to-make-it-faster/32369

function timefunc(func::Function,a) # This portion of the code is written by me, I just want to show how higher order functions work in julia
    start = time()
        n = func(a)
    endtime = time() - start
    println(String(Symbol(func)),": ",endtime) 
    println("Fibonacci number: ", n)
end 

function regFib(n)
    if n < 2
        return n
    else
        return regFib(n-1)+regFib(n-2)
    end
end

function fib(n::Int)
    if n > 23
        t = Threads.@spawn fib(n - 2)
        return fib(n - 1) + fetch(t)
    else
        return regFib(n)
    end
end

function main()
    Threads.nthreads()
    println(Threads.nthreads())
    timefunc(regFib, 46)
    timefunc(fib, 46)
end

main()
