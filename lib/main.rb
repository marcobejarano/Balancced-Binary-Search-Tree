# frozen_string_literal: true

require_relative 'tree'

array = Array.new(15) { rand(1..100) }
bst = Tree.new(array)

bst.pretty_print

puts bst.balanced? ? "The Binary Search Tree is balanced" : "The Binary Search Tree is not balanced"

puts "Inorder traversal: "
puts bst.inorder

puts "Preorder traversal: "
puts bst.preorder

puts "Postorder traversal: "
puts bst.postorder

15.times do
  x = rand(101..200)
  bst.insert(x)
  puts "#{x} inserted into Binary Search Tree."
end

bst.pretty_print

puts bst.balanced? ? "The Binary Search Tree is balanced" : "The Binary Search Tree is not balanced"

puts "Rebalanced tree: "
bst.rebalance

bst.pretty_print

puts bst.balanced? ? "The Binary Search Tree is balanced" : "The Binary Search Tree is not balanced"

puts "Level order traversal: "
puts bst.level_order

puts "Inorder traversal: "
puts bst.inorder

puts "Preorder traversal: "
puts bst.preorder

puts "Postorder traversal: "
puts bst.postorder
