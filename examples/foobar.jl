function index_file(file::String)
    for word in _tokenize(open(readall, file))
        push!(get!(_INDEX, word, Set{String}()), file)
    end
end
