class BubbleSort

    def bubble_sort list
        top = list.length - 1
        while 0 < top
            index = 0
            while index < top do
                unless list[index] < list[index + 1]
                    temporal = list[index]
                    list[index] = list[index + 1]
                    list[index + 1] = temporal
                end   
                index+=1
            end
            top-=1
        end
        list
    end

end