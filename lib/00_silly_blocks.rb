def reverser
  yield.split.map(&:reverse).join(" ")
end

def adder(add_num = 1)
  yield + add_num
end

def repeater(times_to_repeat = 1)
  times_to_repeat.times { yield }
end
