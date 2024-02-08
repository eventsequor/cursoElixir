# declaration
[1, 2, 3, 4]

# return element on head of lists = 1
list_one = hd([1, 2, 3, 4])

IO.puts("Value of head list [1, 2, 3, 4]")
IO.inspect(list_one)
IO.puts("\n")

# return element on tail of lists = [2, 3, 4]
list_two = tl([1, 2, 3, 4])

IO.puts("Tail list [1, 2, 3, 4]")
IO.inspect(list_two)
IO.puts("\n")

# ++++++++++++
# build a list
# ++++++++++++

base = []

# add element

# add element in the head = [1]
base = [1 | base]
# add element in the head = [1, 2]
base = [2 | base]
# add element in the head = [1, 2, 3]
base = [3 | base]

IO.puts("Value of base list")
IO.inspect(base)
IO.puts("\n")

# ++++++++++++
# Gets element with patern matchine
# ++++++++++++
mylist = [1, 2, 3]

[one, two, three] = [1, 2, 3]

IO.puts("Value of one is> #{one}")

# ++++++++++++
# Matchin expresion
# ++++++++++++

list_three = [1, 2, 3, 4, 5]
[head, newHead | tail] = list_three
IO.puts("head of original list #{head}")
IO.inspect("Second head or elemente in the position two(1) #{newHead}")
IO.puts("Rest of element or tail")
IO.inspect(tail)
