function index_directory(directory, extension = "")
    for (root, dirs, files) in walkdir(directory)
        for file in files
            if endswith(file, extension)
                index_file(joinpath(root, file))
            end
        end
    end
end;
