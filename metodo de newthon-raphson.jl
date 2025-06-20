function derive(f::Function, p::Real, h::Float64)
    return (f(p + h) - f(p - h)) / (2 * h)
end

function iterate(f::Function, xo::Real, ε::Real=1e-6, max_it::Int=100)
    k = 1
    h = 1e-5
    xn = xo
    for i in 1:max_it
        f_x = f(xn)
        df_x = derive(f, xn, h)

        if abs(df_x<1e-10)
            error("Derivada próxima de zero")
        end

        xn = xn - (f_x / df_x)
        k = i
        println(xn)
        if abs(f_x) < ε
            break
        end
    end
    return xn, k
end

f(x) = x^2 - 2
xo = 1
iterate(f, xo)