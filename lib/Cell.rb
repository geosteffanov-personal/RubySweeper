class Cell
	attr_accessor :has_mine, :is_shown
	attr_accessor :adjacent_cells

	def initialize(mine = false, adjacent_cells)
		@has_mine = mine
		@is_shown = false
		@adjacent_cells = adjacent_cells
	end

	def nearby_mines
	  return 9 if has_mine
	  count = 0
	  adjacent_cells.each { |cell| count += 1 if cell.has_mine }
	  count
	end
end