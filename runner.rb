require 'docopt'

doc = <<DOCOPT
#{__FILE__} <collection> <module>
DOCOPT

args = Docopt::docopt(doc)

$Klass = nil

require_relative './modules/base.rb'
require_relative args['<module>']

transformer = $Klass.new
output = $Klass.OUTPUT.new $Klass.NAME
connection = nil # stuff...
transformer.onConnection connection

res = connection.query = $Klass.QUERY
res.each do |row|
  row = transformer.onRow row
  output.buffer_row row
end

output.finish
puts "FINISHED !"

