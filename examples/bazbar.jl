# if `&` not in parenthesis: `ERROR: syntax: invalid assignment location`
(&)(hits₁::Set{String}, hits₂::Set{String}) = hits₁ ∩ hits₂
|(hits₁::Set{String}, hits₂::Set{String}) = hits₁ ∪ hits₂
-(hits₁::Set{String}, hits₂::Set{String}) = setdiff(hits₁, hits₂)
!(hits::Set{String}) = _all() - hits;
