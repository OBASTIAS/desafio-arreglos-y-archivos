data = File.open('notas.data').readlines
data.map!{|line| line.split(',')}

def nota_mas_alta(arr)


    [arr[0], arr.map{|x| x.to_i}.max]


end

pp nota_mas_alta(data[2])