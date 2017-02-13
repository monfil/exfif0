#---------REMOVIENDO VOCALES---------
# def vowels(words)
#   words.each {|w| w.delete! "aeiou"}
# end

# p vowels(["banana", "carrot", "pineapple", "strawberry"]) == ["bnn", "crrt", "pnppl", "strwbrry"]

#---------SUMA DE NÚMEROS---------
# def get_sum(n1, n2)
#   if n1 != n2
#   	sum = 0
#   	if n1 < n2
#   		for c in n1..n2
#   			sum = sum + c
#   			c += 1
#   		end
#   	else
#   		for c in n2..n1
#   			sum = sum + c
#   			c -= 1
#   		end
#   	end
#   	return sum
#   else
#   	return n1
#   end
# end

# p get_sum(1, 0) == 1
# p get_sum(1, 2) == 3
# p get_sum(0, 1) == 1
# p get_sum(1, 1) == 1
# p get_sum(-1, 0) == -1
# p get_sum(-1, 2) == 2

#---------PALABRAS Y CARACTERES---------
# def char_word_counter(str)
# 	"This sentence has #{str.scan(/\w+/).length} words & #{str.scan(/\w+/).join.length} characters"
# end

# p char_word_counter("This is a sentence") == "This sentence has 4 words & 15 characters"
# p char_word_counter("This easy") == "This sentence has 2 words & 8 characters"
# p char_word_counter("This is a very complex line of code to test our program") == "This sentence has 12 words & 44 characters"
# p char_word_counter("And when she needs a shelter from reality she takes a dip in my daydreams") == "This sentence has 15 words & 59 characters"

#---------BUSCANDO HASHES---------
# def food_group(food)
# 	food_groups = {
#     "grano" => ['Arroz','Trigo', 'Avena', 'Cebada', 'Harina'],
#     "vegetal" => ['Zanahoria', 'Maíz', 'Elote', 'Calabaza', 'Papa'],
#     "fruta" => ['Manzana', 'Mango', 'Fresa', 'Durazno', 'Piña'],
#     "carne" => ['Res', 'Pollo', 'Salmón', 'Pescado', 'Cerdo'],
#     "lacteo" => ['Leche', 'Yogur', 'Queso', 'Crema']
#     }
#     r = ""
#     food_groups.each do |k, v| 
#         v.each do |f|
#             return k if f == food
#         end
#     end
#     "comida no encontrada"
# end

#  # Driver code
#  p food_group('Crema') == "lacteo"
#  p food_group('Res') == "carne"
#  p food_group('Piña') == "fruta"
#  p food_group('Caña') == "comida no encontrada"

#---------DADO---------
# class Die
#     def initialize(sides)
#          @sides = sides
#     end

#     def sides
#         @sides
#     end

#     def sides=(ns)
#         @sides = ns
#     end

#     def roll
#         puts "Dame un número de lados mayor que 1: "
#         sides = gets.chomp.to_i
#         if sides > 1
#             puts rand(2...sides)
#         else
#             puts "Número equivocado, ¿quieres volver a lanzar? S/N"
#             r = gets.chomp
#             r.upcase == "S" ? roll : "El juego terminó."
#         end 
#     end
# end

# dado = Die.new(2)
# dado.roll

#---------DRIVING---------
class MyCar
    def initialize(a, c, m)
        @a = a
        @c = c
        @m = m
    end

    def speed_up(s)
    end

    def current_speed
    end

    def brake(s)
    end

    def shut_down
    end
end