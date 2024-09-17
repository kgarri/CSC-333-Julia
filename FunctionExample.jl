function genricSeq(n::Int, cache = Dict(0=>0, 1=>1))
    if haskey(cache,n)
        return getindex(cache,n)
    else 
        result = genricSeq(n-1,cache) + genricSeq(n-2, cache)
        setindex!(cache,result,n)
        return(result)  
    end 
end

@time genricSeq(46,Dict(0=>2, 1=>1))