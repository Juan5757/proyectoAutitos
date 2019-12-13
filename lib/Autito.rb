class Autito
    
    def inicializar(nombre,posFil,posCol,orientacion,movimientos)
        @orientacion = orientacion
        @nombre = nombre  
        @posCol = posCol  
        @posFil = posFil
        @movimientos = movimientos
    end 

    def getOrientacion()
        return @orientacion
    end

    def updateOrientacion(orientacion)
        @orientacion = orientacion
    end

    def updateMovimientos(movimientos)
        @movimientos= movimientos
    end

    def getNombre()
        return @nombre
    end

    def getPos()
        return "#{getPosFil()},#{getPosCol()}"
    end

    def getPosCol()
        return @posCol
    end

    def getPosFil()
        return @posFil
    end

    def getMovimientos()
        return @movimientos
    end

    def updatePos(posFil,posCol)
        @posCol = posCol  
        @posFil = posFil
    end

    def girarAutito(direccion)
        orientacionActual= getOrientacion()
        aLaIzquierda = { "N" => "O", "O" => "S", "S" => "E","E" => "N"  }
        aLaDerecha = { "N" => "E", "E" => "S", "S" => "O","O" => "N"  }
        if(direccion== "I")
            updateOrientacion(aLaIzquierda[orientacionActual])
        elsif(direccion == "D")
            updateOrientacion(aLaDerecha[orientacionActual])
        else
            return false
        end
        return true
    end

    def avanzarAutito()
        case @orientacion
        when 'N'
            @posFil = @posFil - 1
        when 'S'
            @posFil = @posFil + 1
        when 'E'
            @posCol = @posCol + 1 
        when 'O'
            @posCol = @posCol - 1
        end 
    end

    def retrocederAutito()
        case @orientacion
            when 'N'
                @posFil = @posFil + 1
            when 'S'
                @posFil = @posFil - 1
            when 'E'
                @posCol = @posCol - 1
            when 'W'
                @posCol = @posCol + 1 
        end
    end

end