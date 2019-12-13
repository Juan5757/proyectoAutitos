require './lib/Autito.rb'
class Terreno
    def crearTerreno(filas,columnas)
        @filas = filas
        @columnas = columnas
    end
      
    def getTerrenoSize()
        return  "#{@filas}x#{@columnas}"
    end

    def getFilas()
        return @filas
    end

    def getColumnas()
        return @columnas
    end

    #def updateFilas(filas)
    #    return @filas
    #end

    #def updateColumnas(columnas)
    #    return @columnas
    #end


end