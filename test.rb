class String
   def shuffle
   		self.split('').shuffle.join
   end
end

class Abc
	attr_accessor :mother, :father, :child

	def initialize(attributes = {})
		@mother = attributes[:mother]
		@father = attributes[:father]
		@child = attributes[:child]
	end

	def format_params
		"Mother:#{@mother}\nFather:#{@father}\nChild#{@child}"
	end
end

class User
  attr_accessor :name, :email

  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end



person1 = {first: "josh", last: "rosenkranz"}
person2 = {first: "bob", last: "johnson"}
person3 = {first: "bobette", last: "williams"}

p = Abc.new
p.father = person1
p.mother = person2
p.child = person3

params = {mother: person1, father: person2, child: person3}
puts params
puts p.format_params

puts params[:father][:first]