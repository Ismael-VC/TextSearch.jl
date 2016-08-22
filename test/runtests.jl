using TextSearch
using Base.Test

index_directory("../examples", ".jl")

@test S"∪" & S"∩" == Set(Union{ASCIIString,UTF8String}["..\\examples\\bazbar.jl"])
@test S"∪" | S"end" == Set(Union{ASCIIString,UTF8String}["..\\examples\\qux.jl","..\\examples\\bar.jl","..\\examples\\foobarbaz.jl","..\\examples\\foo.jl","..\\examples\\foobar.jl","..\\examples\\bazbar.jl"])
@test S"function" - S"=" == Set(Union{ASCIIString,UTF8String}["..\\examples\\foo.jl","..\\examples\\foobar.jl"])
@test S"else" & !S"#" == Set(Union{ASCIIString,UTF8String}["..\\examples\\bar.jl"])
