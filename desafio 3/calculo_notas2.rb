data = File.open('notas.data').readlines
data.map!{|line| line.split(',')}

def nota_mas_alta(arr)

    results = []
    arr.each do |line|
        results.push [line[0], line.map{|x| x.to_i}.max]
    end
    return results
end

pp nota_mas_alta(data)