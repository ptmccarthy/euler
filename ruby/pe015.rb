=begin 
Starting in the top left corner of a 2x2 grid, and only being able to move to the right and down,
there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20x20 grid?
=end

GRID_SIZE = 20

=begin
Counting from the upper left and starting at zero, each node can be denoted
as N(i,j) where i is the i-th row and j is the j-th column.

The paths along the top or left edge of the grid are only 1.

The paths to N(1,1) must pass through N(0,1) or N(1,0), yielding 2 paths to N(1,1)

This pattern can be extrapolated to any node in the grid. The number of paths to
any N(i,j) can be found as the sum of the paths to N(i,j-1) and N(i-1,j). In the
case of a perfect square grid, N(i,j-1) = N(i-1,j), so N(i,j) can also be
represented as 2*N(i,j-1) or 2*N(i-1,j).
=end

def find_paths(grid_size)
  # array/list sums records the sum of paths in a grid of size sums[i+1]
  sums = [1] * 20
  for i in 0...grid_size
    for j in 0...i do
      sums[j] = (sums[j] + sums[j-1])
    end
    sums[i] = 2 * sums[i-1]
  end
  sums[grid_size - 1]
end

puts find_paths(GRID_SIZE)

#137846528820
#
#real  0m0.041s
#user  0m0.028s
#sys 0m0.011s
