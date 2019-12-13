require 'Autito'
require 'Terreno'
RSpec.describe Autito do
    
    it "1.-deberia retornar rayo Mcqueen si creo un autito identificado como rayo Mcqueen" do
        autito = Autito.new
        autito.inicializar('rayo Mcqueen',2,2,'N','U')
        expect(autito.getNombre()).to eq("rayo Mcqueen")
    end
    it "2.-deberia retornar 2 si introduzco N como orientacion" do
        autito = Autito.new
        autito.inicializar('rayo Mcqueen',2,2,'N','U')
        expect(autito.getOrientacion()).to eq("N")
    end
    it "3.-deberia retornar U si U como movimiento" do
        autito = Autito.new
        autito.inicializar('rayo Mcqueen',2,2,'N','U')
        expect(autito.getMovimientos()).to eq("U")
    end
    it "4.-deberia retornar U si U como movimiento" do
        autito = Autito.new
        autito.inicializar('rayo Mcqueen',2,2,'N','U')
        expect(autito.getMovimientos()).to eq("U")
    end
    

    it '5 .-Deberia devolver 5 cuando se envia 5' do
        auto = Autito.new
        auto.inicializar("A",5,5,"N","D")
        expect(auto.getPosCol()).to eq (5)
    end
    it '6.-Deberia devolver posfil en 8 cuando se crea el autito en la posfil 8' do
        auto=Autito.new
        auto.inicializar("A",8,5,"N","D")
        expect(auto.getPosFil()).to eq (8)
    end
    it '7.-Deberia devolver orientacion E cuando se actualize orientacion de N a E' do
        auto=Autito.new
        auto.inicializar("A",5,5,"N","D")
        auto.updateOrientacion("E")
        expect(auto.getOrientacion()).to eq ('E')
    end

    it "8.-deberia retornar 2x3 si se creo un terreno de 2x3" do
        terreno= Terreno.new
        terreno.crearTerreno(2,3)
        expect(terreno.getTerrenoSize()).to eq("2x3")
    end

    it "9.-deberia retornar 3 si se creo un terreno con 3 filas" do
        terreno= Terreno.new
        terreno.crearTerreno(3,2)
        expect(terreno.getFilas()).to eq(3)
    end


    it "10.-deberia retornar 3 si se creo un terreno con 3 columnas" do
        terreno= Terreno.new
        terreno.crearTerreno(1,3)
        expect(terreno.getColumnas()).to eq(3)
    end

    it "11.-deberia retornar 3 si se creo un terreno con 2 columnas y se actualizo a 4" do
        terreno= Terreno.new
        terreno.crearTerreno(1,3)
        expect(terreno.getColumnas()).to eq(3)
    end

    it "12.-deberia retornar 3 si se creo un terreno con 3 columnas" do
        terreno= Terreno.new
        terreno.crearTerreno(1,3)
        expect(terreno.getColumnas()).to eq(3)
    end
    
    it "13.-deberia retornar I si se cambia de direccion a I " do
        auto=Autito.new
        auto.inicializar("A",5,5,"N","D")
        auto.updateOrientacion("E")
        expect(auto.girarAutito("I")).to eq(true)
    end

    it "14.-deberia retornar I si se cambia de direccion a I " do
        auto=Autito.new
        auto.inicializar("A",5,5,"N","D")
        auto.updateOrientacion("E")
        expect(auto.girarAutito("I")).to eq(true)
    end

    
    it "15.-Si creo un autito con los movimientos UI y actualizo a IU deberia mostrarme IU" do
        auto=Autito.new
        auto.inicializar("A",5,5,"UI","D")
        expect(auto.updateMovimientos('IU')).to eq ('IU')
    end

    it "16.- Deberia retornar 3,3 Si creo un autito en la posicion 3,3" do
        auto=Autito.new
        auto.inicializar("A",3,3,"UI","D")
        expect(auto.getPos()).to eq ('3,3')
    end

end
