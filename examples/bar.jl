function walk_directory(fn, directory)
    for file in readdir(directory)
        path = joinpath(directory, file)
        if isdir(path)
            walk_directory(fn, path)
        else
            fn(path)
        end
    end
end
