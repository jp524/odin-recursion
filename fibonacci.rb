def fibs(n)
  array = []
  for i in 0...n
    if i == 0
      array << 0
    elsif i == 1
      array << 1
    else
      array << array[i - 1] + array[i - 2]
    end
  end
  array
end

def fibs_rec(n)
  case n
  when 0
    []
  when 1
    [0]
  when 2
    [0, 1]
  else
    array = fibs_rec(n - 1)
    array << array[-1] + array [-2]
  end
end

p fibs(8)
p fibs_rec(8)
