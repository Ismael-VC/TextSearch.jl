_tokenize(text::String) = map(lowercase, split(text))
_all() = reduce(union, values(_INDEX));
