require "./lib/tennis.rb"

describe "Juego de tennis" do
    it "inicio A y B con 0 puntos" do
        tennis = Tennis.new
        puntaje = tennis.mostrar_puntaje
        expect(tennis.jugador1).to eq 0
        expect(tennis.jugador2).to eq 0
    end
    
    it "Jugador 1 hace punto" do
        tennis = Tennis.new
        tennis.anotar "jugador1"
        puntaje = tennis.mostrar_puntaje
        expect(puntaje).to eq "15 - 0"
    end
    
    it "Un jugador hace 2 puntos" do
        tennis = Tennis.new
        tennis.anotar "jugador1"
        tennis.anotar "jugador1"
        puntaje = tennis.mostrar_puntaje
        expect(puntaje).to eq "30 - 0"
    end
    
    it "Un jugador hace 3 puntos" do
        tennis = Tennis.new
        tennis.anotar "jugador1"
        tennis.anotar "jugador1"
        tennis.anotar "jugador1"
        puntaje = tennis.mostrar_puntaje
        expect(puntaje).to eq "40 - 0"
    end
    
    it "Un jugador hace 1 punto e iguala al 2 jugador" do
        tennis = Tennis.new
        tennis.anotar "jugador1"
        tennis.anotar "jugador2"
        puntaje = tennis.mostrar_puntaje
        expect(puntaje).to eq "15 iguales"
    end
end
