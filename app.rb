require 'sinatra'
require './lib/Terreno.rb'
require './lib/Autito.rb'

@@main_terreno ||= Terreno.new
@@autitos=[]
@@resultados=[]
get '/' do
    erb:pagina_principal
end
post '/CreandoTerreno' do
    @nombreJugador =params[:NombreUsuario]
    if(!@nombreJugador.empty?)
        erb:pagina_creando_terreno
    else
        erb:pagina_nombre_invalido
    end
   
end
post '/TerrenoCreado' do
    
    @limiteFilasTerreno =params[:limiteFilasTerreno]
    @limiteColumnasTerreno  =params[:limiteColumnasTerreno]
    @message ="Terreno creado con éxito"
    @nombreJugador =params[:nombreJugador]
    if(isStr(@limiteFilasTerreno)== true or isStr(@limiteColumnasTerreno)== true)
       
        print(@limiteFilasTerreno.is_a? Integer)
        @limiteFilasTerreno =@limiteFilasTerreno.to_i
        @limiteColumnasTerreno  =@limiteColumnasTerreno.to_i
    end
    if(@@main_terreno.crearTerreno(@limiteFilasTerreno,@limiteColumnasTerreno) == false)
        @message = " Error, asegurate de llenar todos los campos"
        erb:parametros_terreno_invalidos
    else
        erb:terreno_creado
    end
      
end

post '/Autito' do
    @nombreJugador =params[:nombreJugador]
    @limiteFilasTerreno =params[:limiteFilasTerreno]
    @limiteColumnasTerreno  =params[:limiteColumnasTerreno]
    @cantidadAutos = params[:cantidadAutos].to_i
    for auto in 0..@cantidadAutos-1 do
        @@autitos << Autito.new
    end
    erb:pagina_autito
      
end
post '/Autito/parametros' do

    @nombreJugador =params[:nombreJugador]
    @nombreAutito = params[:nombreAutito]
    @posicionIncialX =params[:posicionIncialX].to_i
    @posicionIncialY =params[:posicionIncialY].to_i
    @orientacionInicial =params[:orientacionInicial]
    @limiteFilasTerreno =params[:limiteFilasTerreno]
    @limiteColumnasTerreno  =params[:limiteColumnasTerreno]

    @movimientosAutito = params[:movimientosAutito]


    for auto in 0..@@autitos.length()-1 do
        @@autitos[auto].inicializar(params[auto.to_s+'nombreAutito'],params[auto.to_s+'posicionIncialY'].to_i,params[auto.to_s+'posicionIncialX'].to_i,params[auto.to_s+'orientacionInicial'],params[auto.to_s+'movimientosAutito'])
        @@resultados[auto] = @@autitos[auto].dup()
    end   
    
    for i in 0..@@autitos.length()-1 do
        for j in 0..@@autitos[i].getMovimientos.length-1 do
            if @@autitos[i].getMovimientos[j] == "I" or @@autitos[i].getMovimientos[j] =="D"
                 @@autitos[i].girarAutito(@@autitos[i].getMovimientos[i])
            
            else
                if  @@autitos[i].getMovimientos[j] == "U"
                    @@autitos[i].avanzarAutito()
                    if @@autitos[i].getPosCol == @@main_terreno.getColumnas or @@autitos[i].getPosFil == @@main_terreno.getFilas 
                        @@autitos[i].retrocederAutito()
                    end 
                else
                    @@autitos[i].retrocederAutito()
                    if @@autitos[i].getPosCol == @@main_terreno.getColumnas or @@autitos[i].getPosFil == @@main_terreno.getFilas 
                        @@autitos[i].avanzarAutito()
                    end
                end 
            end
        end
    end

    erb:autito_movimientos_completados
end




def isStr(parametro)
    if(parametro.is_a? String)
        return true
    end
    return false
end