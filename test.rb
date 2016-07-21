require 'sequelizer'

include Sequelizer
File.foreach('export_no_debug.sql') do |line|
  puts line.chomp
  db.execute(line.chomp) do |cursor|
  	cursor.each do |row|
  		puts row
  	end
  end
  puts
end
