

$value
$count

class Troco

	def initialize()
	
	end
	
	def troco(value)
	
		if value>=100
		
			$value = $value-100
			$count = $count + 1
			
		elsif value>=25
		
			$value = $value-25
			$count = $count + 1
			
		elsif value>=10
		
			$value = $value-10
			$count = $count + 1
			
		elsif value>=1
		
			$value = $value-1
			$count = $count + 1
		
		end
	
	end

end

class Principal

	$count = 0

	print "Write the value:"
	$value = gets
	
	$value = $value.to_i
	
	while $value>0
	
		puts $value
	
		t = Troco.new
		
		t.troco($value)
	
	end
	
	puts "Número de moedas: #{$count}"

end
