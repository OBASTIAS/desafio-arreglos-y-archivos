def chart(array)

    array.each do |element|
        puts "| #{ '**' * element}"
    end

    max = array.max

    puts "| #{ '>' + '-' * max  * 2}"

    max.times do |i|
        i += 1
        print "#{i} "
    end

    print "\n"
end

def chart_file(array,filename)

    file = File.open(filename,"w")

        array.each do |element|
            file.write "| #{ '**' * element} \n"
        end

        max = array.max

        file.write "| #{ '>' + '-' * max  * 2}\n"

        max.times do |i|
            i += 1
            file.write "#{i} "
        end

        file.write "\n"

    file.close

end

a = [2,5,8,6,3]
chart_file(a,"grafico1.data")
# chart(a)