# 2. Frog Jump
# A small frog wants to get to the other side of the road. The frog is currently located
# at position X and wants to get to a position greater than or equal to Y. The small frog always jumps a fixed distance, D.
# Count the minimal number of jumps that the small frog must perform to reach its target.
# Write a function def frog_jump(x, y, d) that, given three integers X, Y and D, returns
# the minimal number of jumps from position X to a position equal to or greater than Y.
# For example: Given: X = 10, Y = 85 and D = 30, the function should return 3, because
# the frog will be positioned as follows:

# ● After the first jump, at position 40 (10 + 30)
# ● After the second jump, at position 70 (10 + 30 + 30)

def frog_jump(x,y,d)
  number_of_jumps = 0
  while x < y
    number_of_jumps +=1
    x += d
  end
  number_of_jumps
end
