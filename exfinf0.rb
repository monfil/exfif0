#---------REMOVIENDO VOCALES---------
def vowels(words)
  words.each {|w| w.delete! "aeiou"}
end

p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]

#---------SUMA DE NÚMEROS---------
def get_sum(n1, n2)
  if n1 != n2
    sum = 0
    if n1 < n2
      for c in n1..n2
        sum = sum + c
        c += 1
      end
    else
      for c in n2..n1
        sum = sum + c
        c -= 1
      end
    end
    return sum
  else
    return n1
  end
end

p get_sum(1, 0) == 1
p get_sum(1, 2) == 3
p get_sum(0, 1) == 1
p get_sum(1, 1) == 1
p get_sum(-1, 0) == -1
p get_sum(-1, 2) == 2

#---------PALABRAS Y CARACTERES---------
def char_word_counter(str)
  "This sentence has #{str.scan(/\w+/).length} words & #{str.scan(/\w+/).join.length} characters"
end

p char_word_counter("This is a sentence") == "This sentence has 4 words & 15 characters"
p char_word_counter("This easy") == "This sentence has 2 words & 8 characters"
p char_word_counter("This is a very complex line of code to test our program") == "This sentence has 12 words & 44 characters"
p char_word_counter("And when she needs a shelter from reality she takes a dip in my daydreams") == "This sentence has 15 words & 59 characters"

#---------BUSCANDO HASHES---------
def food_group(food)
  food_groups = {
    "grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'],
    "vegetal" => ['Zanahoria', 'Maíz', 'Elote', 'Calabaza', 'Papa'],
    "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'],
    "carne" => ['Res', 'Pollo', 'Salmón', 'Pescado', 'Cerdo'],
    "lacteo" => ['Leche', 'Yogur', 'Queso', 'Crema']
    }
    r = ""
    food_groups.each do |k, v| 
        v.each do |f|
            return k if f == food
        end
    end
    "comida no encontrada"
end

 # Driver code
 p food_group('Crema') == "lacteo"
 p food_group('Res') == "carne"
 p food_group('Piña') == "fruta"
 p food_group('Caña') == "comida no encontrada"

#---------DADO---------
class Die
    def initialize
         @sides
    end

    def sides
        @sides
    end

    def sides=(ns)
        @sides = ns
    end

    def roll
        puts "El número que cayó es #{rand(2...sides)}."
    end
end

puts "Dame los lados del dado, debe ser mayor que 1: "
sides = gets.chomp.to_i
if sides > 1
    dado = Die.new
    dado.sides = sides
    puts "Tu dado tiene #{sides} lados."
    dado.roll
else
    puts "¡No se puede crear el dado!"
end

#---------DRIVING---------
class MyCar
    @@s = 0
    def initialize(a, c, m)
        @a = a
        @c = c
        @m = m
    end

    def speed_up(sp)
        @@s += sp
        "You push the gas and accelerate #{sp} kph."
    end

    def current_speed
        "You are now going #{@@s} kph."
    end

    def brake(sp)
        @@s -= sp
        "You push the brake and decelerate #{sp} kph."
    end

    def shut_down
        @@s = 0
        "Let's shut down to #{@@s}!"
    end
end

carro_prueba = MyCar.new(1970, 'Rojo', 'Mustang')
# Driver code
p carro_prueba.speed_up(20) == "You push the gas and accelerate 20 kph."
p carro_prueba.current_speed == "You are now going 20 kph."
p carro_prueba.speed_up(20) == "You push the gas and accelerate 20 kph."
p carro_prueba.current_speed == "You are now going 40 kph."
p carro_prueba.brake(20) == "You push the brake and decelerate 20 kph."
p carro_prueba.current_speed == "You are now going 20 kph."
p carro_prueba.brake(20) == "You push the brake and decelerate 20 kph."
p carro_prueba.current_speed == "You are now going 0 kph."
p carro_prueba.shut_down == "Let's shut down to 0!"
p carro_prueba.current_speed == "You are now going 0 kph."

#---------PLAYLIST---------
class Playlist
    def initialize(name, songs)
        @name = name
        @songs = songs
        @song_playing = 0
    end

    def playlist_name
        @name
    end

    def number_of_songs
        @songs.length
    end

    def play
        "Now playing #{@songs[@song_playing]}"
    end

    def add_song(song)
        @songs << song
        "Song added."
    end

    def next_song
        if @songs[@song_playing] == @songs.last
            @song_playing = 0
            play
        else
            @song_playing += 1
            play
        end
    end
end

playlist1 = Playlist.new('Oldies but goodies.',["Hyperballad - Björk", "I'm only happy when it rains - Garbage", "Bonito - Jarabe de Palo", "Bike - Pink Floyd", "Feeling good - Nina Simone", "Tears dry on their own - Amy Whinehouse", "Maggot Brain - Funkadelic", "Star crossed lovers - Duke Ellington"])
p playlist1.playlist_name
p playlist1.number_of_songs
p playlist1.play
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.add_song("Maybe - Janis Jiplin")
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song
p playlist1.next_song