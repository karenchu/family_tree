require_relative 'grandparent'

class Parent < Grandparent
	@@children = []

	def self.children
		@@children
	end

	# attr_accessor :name, :age, :gender
	# @@children = 0
	# def initialize(name,age,gender)
	# 	super(name,age,gender)
	# end

	# def self.children
	# 	@@children
	# end

end

