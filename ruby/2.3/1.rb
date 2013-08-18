file = File.new("1.rb",'r')
while (line = file.gets)
		puts line
end
file.close

puts '---------------------'

File.open("1.rb",'r') do |f|
		while (line = f.gets)
				puts line
		end
end

hash = { 'a' => 1, 'b' => 2 }
arr = hash.collect {|key,value| value}
puts Hash[arr.collect {|element| [arr.index(element) , element]}]

hash.each {|key, value| puts "key: #{key} and value: #{value}"}

arr = (1..16)

arr.each do |x|  
		puts x 
		puts '-----' if x%4 == 0
end

class Tree
		attr_accessor :children, :node_name

		def initialize(name, children=[])
				if not name == ""
	    			@children = children
					@node_name = name
				else
					@node_name = name.keys.first
					@children = name[@node_name].map {|k,v| Tree.new({k=>v})}
				end
		end

		def visit_all(&block)
				visit &block
				children.each {|c| c.visit_all &block}
		end

		def visit(&block)
				block.call self
		end
end

ruby_tree = Tree.new("Ruby",[Tree.new("Reia"),Tree.new('MacRuby')])
#ruby_tree = Tree.new({"Ruby" => {"Reia" => {} , "MacRuby" => {}}})
puts 'Visiting a node:'
ruby_tree.visit {|node| puts node.node_name}
puts
puts 'visiting entire tree:'
ruby_tree.visit_all {|node| puts node.node_name}

puts 'input the regexp:'
reg = gets.chomp
File.open("1.rb",'r') do |f|
		line_count = 0
		while (line = f.gets)
				line_count = line_count + 1
				puts line_count.to_s+"\t"+line if line =~ /#{reg}/
		end
end
