module extras
    using DataFrames,CSV
    function detect_strings(df)
        str=[String31,String7,String15]
        vector=eltype.(eachcol(df)).==str[1]
        elements=[]
        columns=names(df)
        for i in 2:length(str)
            vector+=eltype.(eachcol(df)).==str[i]
        end
    
        for j in 1:length(columns)
            if vector[j]==0
            push!(elements,columns[j])
            end
        end
        return elements
    end
    function evaluate(test,prediction)
    correct=0
    n=length(test)
        for i in 1:n
            if test[i]==prediction[i]
                correct+=1
            end
        end
        println("La precisión del modelo es de "*str(correct*100/n)*"%")
    end

    function test()
    println("I work :D")
    end
end