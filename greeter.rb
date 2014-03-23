#!/usr/bin/env  ruby

class MegaGreeter
	attr_accessor:names

	#Create the objet
	def initialize(name="World")
		@names=name
	end

	#say hi to every one
	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{@names}"
		end
	end

	#say goodbye to everyone
	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
				puts "Goodbye  #{@names.join(", ")}. Come back soon!"

		else
			puts "Good bye  #{@names}. Come back soon!"
		end 
	end
end


if __FILE__==$0
	mg=MegaGreeter.new
	mg.say_hi
	mg.say_bye

	#change name to huade
	mg.names="huade"
	mg.say_hi
	mg.say_bye

	#change to name list
	mg.names=["LiuBei", "ZhangFei", "GuanYu", "KongMing"]
	mg.say_hi	
	mg.say_bye

	#change name to nil
	mg.names=nil
	mg.say_hi
	mg.say_bye

	#get class MegaGreeter's attribute
	puts "names"
	mg.respond_to?("names")

	puts "say_hi"
	mg.respond_to?("say_hi")

	puts "say_bye"
	mg.respond_to?("say_bye")

	puts "instance"
	MegaGreeter.instance_methods

	puts "instance self"
	MegaGreeter.instance_methods(false)

end






