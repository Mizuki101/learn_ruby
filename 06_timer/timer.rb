class Timer
  #write your code here
  	def initialize()
		@time = %w(0 0 0)
	end
	
	def seconds
		return @time[2].to_i
	end

	def seconds=(value)
		if value >= 3600
		   @time[0] = value / 3600
		   value = value.remainder(3600)
		end
		if value >= 60		
		   @time[1] = value / 60
		   value = value.remainder(60)
		end
	@time[2] = value	
	end

	def time_string
		@time.collect! do |t|
			if t.to_i < 10
			t = "0" + t.to_s
			else
			t = t.to_s
			end
		end
		return @time.join(":")
	end

end

