function _lookup(terms)
    mapreduce(intersect, _tokenize(terms)) do token
        get(_INDEX, token, Set{String}())
    end
end
