require_relative 'person'

jin = Person.new("Jin Sakai", 100, 50)
puts jin

khotun = Person.new("Khotun Khan", 500, 50)
puts khotun

puts "======================================"

loop do
    jin.attack(khotun)
    puts khotun
    break if khotun.die?

    puts "======================================"

    khotun.deflect_rate(jin)
    puts jin
    break if jin.die?

    puts "======================================"
end