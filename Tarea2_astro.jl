using Random, Plots, LaTeXStrings

const R_s = 6.95990e8
const τ = 3e-3
const c = 3e8
r = 0
idx = 0
for i in 1:1000000
    idx += 1
    θ = rand()*2π
    r = sqrt(r^2 + τ^2 + 2*r*τ*cos(θ))

    if idx % 10000 == 0 
        println("step # $idx")
    elseif idx > 1e8 
        break
    end
end
idx, r

((τ/c* idx)*R_s/r)/86400