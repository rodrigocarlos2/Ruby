
module MyModule

	def plus(x)
		x+1
	end
end

class Soma

	include MyModule

end

soma1 = Soma.new

puts soma1.plus(0)
puts soma1.plus(1)
puts soma1.plus(2)
puts soma1.plus(3)