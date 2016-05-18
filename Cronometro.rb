
# Timer by Rodrigo


class Timer

	def initialize(seconds, minutes)
	
		@seconds = seconds
		@minutes = minutes
	
	end
	
	def exec
	
		puts "Start!!"
	
		i = 0
		j = 0
		
		while i < @minutes 
			
			for x in 0..59
		
				puts " "
				puts " "
				puts " "
		
				puts " Time current: #{i}:#{x}"
				sleep 1.0
				system("cls")
				# in Linux make: system("clear")
			
			end
			
			i = i+1;
		
		end
		
		while j < @seconds
		
			if j>59
				i = i+1
				@seconds = @seconds - 60;
				j = 0
			end
		
			puts "#{i}:#{j}"
			sleep 1.0
			j = j+1
		
		end
		
		puts "End!!"
	
	end

end

class Test

	print "Write the time in seconds: "
	@seconds = gets
	
	print "Write the time in minutes: "
	@minutes = gets
	
	@sec = Integer(@seconds)
	
	@min = Integer(@minutes)

	t = Timer.new(@sec, @min);
	
	t.exec();
	
end
