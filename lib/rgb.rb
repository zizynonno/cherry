def to_hex(r,g,b)
  #'#' +
  #r.to_s(16).rjust(2,'0') +
  #g.to_s(16).rjust(2,'0') +
  #b.to_s(16).rjust(2,'0')
  hex = '#'
  [r,g,b].each do |n|
    hex += n.to_s(16).rjust(2,'0')
  end
  hex
end

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  ints =[]
  [r,g,b].each do |s|
    ints << s.hex
  end
  ints
end

puts to_ints("#161616")