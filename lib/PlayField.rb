require_relative 'Cell.rb'

class PlayField
	@play_field
	@x_size
	@y_size
	def initialize(x_axis, y_axis)
		@x_size = x_axis
		@y_size = y_axis
		@play_field = Array.new(x_axis) do |row|
			row = Array.new(y_axis) do |element|
				element = Cell.new([true, false].sample)
			end
		end
	end



	def print_field
		@play_field.each do |row|
			row.each do |element|
				print " # " if element.has_mine
			end
			puts
		end
	end
end


a = PlayField.new(10,10)

a.print_field
