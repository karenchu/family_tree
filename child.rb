require_relative 'grandparent'
require_relative 'parent'

class Child < Parent
	@@favColors = ["red", "blue", "green"]
	attr_accessor :favColor
	def initialize(name, age, gender)
		super
		@favColor = @@favColors.sample
		@@children << self
		@@grandchildren << self
	end

	def talk
		if(@age < 2)
			"Wahhh!"
		end
	end


	# attr_accessor :name, :age, :gender, :favColor
	#   	@@favColors = [:blue,:red,:green,:yellow,:purple,:pink,:orange]

	# def initialize(name,age,gender)
	# 	super(name,age,gender)
	# 	@favColor = @@favColors.sample
	# 	@@children +=1
	# 	@@grandchildren +=1
	# end

	# def self.getColors
	# 	@@favColors
	# end

	# def growUp
	# 	@age+=1
	# end

	# def talk(text=nil)
	# 	if @age > 2
	# 		puts "#{text}, and my favorite color is #{@favColor}"
	# 		"#{text}, and my favorite color is #{@favColor}"
	# 	else
	#   		puts "Wahhh!!"
	#   		"Wahhh!"
	# 	end
	# end
end

