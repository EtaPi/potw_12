m=Array.new(s=File.open("B.test").readlines.map{|e|e.chomp})
f=File.open("B.answer").readlines.map{|e|e.chomp}

m=m.map!{|e|(e.include??-)?
  (e.count ?B)>s.length/2-1?e.gsub(?-,?R):
  (e.count ?R)>s.length/2-1?e.gsub(?-,?B):
  (e.include?"BB-")?e.gsub("BB-","BBR"):
  (e.include?"B-B")?e.gsub("B-B","BRB"):
  (e.include?"-BB")?e.gsub("-BB","RBB"):
  (e.include?"RR-")?e.gsub("RR-","RRB"):
  (e.include?"R-R")?e.gsub("R-R","RBR"):
  (e.include?"-RR")?e.gsub("-RR","BRR"):
  (e.count ?-)==2?(
    (i=m.index{|mm|mm=~/#{e.gsub(?-,"[BR]")}/})?
      e.split(//).map.with_index{|ee,ii|ee==?-?(m[i.to_i][ii]==?B??R:?B):ee}.join:
  e): e : e}.map{|e|e.split(//)}.transpose.map{|e|e.join}while m.join.count(?-)>0

puts "\x1b[37;1m\nSTART:\n",s.map{|e|e.gsub(/[BR]/,'B'=>"\x1b[36mB\x1b[37m",'R'=>"\x1b[31mR\x1b[37m")},"\nFINISH:\n",f.map{|e|e.gsub(/[BR]/,'B'=>"\x1b[36mB\x1b[37m",'R'=>"\x1b[31mR\x1b[37m")},"\nDid you win???  #{m==f ?"YES":((m=m.map{|e|e.split(//)}.transpose.map{|e|e.join})==f ?"YES":"NO")}!!  see..",m.map{|e|e.gsub(/[BR]/,'B'=>"\x1b[36mB\x1b[37m",'R'=>"\x1b[31mR\x1b[37m")}
puts "\nTASTE THE \x1b[31mR\x1b[32mA\x1b[33mI\x1b[34mN\x1b[35mB\x1b[36mO\x1b[37mW\x1b[30m...\x1b[37mcolors \u00A9 \x1b[31mM\x1b[37ma\x1b[34mr\x1b[31mk \x1b[37mW\x1b[34mo\x1b[31mo\x1b[37md\x1b[34ms\x1b[37m"
