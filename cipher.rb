def cipher(string, shift)
    shifted = []

    ord_array = string.chars.map! { | letter | letter.ord }

    ord_array.map! do |ord|
        if ord < 65 || ord > 122
            shifted.push(ord)
        elsif ord + shift > 90 && ord + shift < 97
            cycle_ord = ord - 26 + shift
            shifted.push(cycle_ord)
        elsif ord + shift > 122
            cycle_ord = ord - 26 + shift
            shifted.push(cycle_ord)
        else shifted.push(ord + shift)
        end
    end
    shifted.map! { |num| num.chr }
    puts shifted.join
end

cipher('What a string!', 9)