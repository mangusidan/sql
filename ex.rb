# ex1
def transform_array(arr)
  transformed_arr = []
  arr.each_with_index do |num, index|
    if index.even?
      transformed_arr << num ** 2
    else
      transformed_arr << num * 2
    end
  end
return transformed_arr;
end
# # ex2
# array = []
# index_hash = {}
# array.each_with_index do |value, index|
# index_hash[value] = index
# end
# puts index_hash

# #  ex3
# class Assignment
#   def exercise1
#   return "Result of exercise 1"
#   end
#   def self.exercise2
#   return "Result of exercise 2"
#   end
# end
# assignment = Assignment.new
# puts assignment.exercise1
# puts Assignment.exercise2

# # ex4
# class Numeric
#     KANSUJI = %w[零 一 二 三 四 五 六 七 八 九]
    
#     def to_kansuji
#       return KANSUJI[0] if self == 0
#       digits = self.digits.reverse
#       digits.map { |d| KANSUJI[d] }.join
#     end
#   end
# end
# class String
#   def to_number
#     return 0 if self == "零"
#     KANSUJI.each_with_index do |k, i|
#       return i if k == self
#       end
#       raise ArgumentError, "Invalid kanji character: #{self}"
#       end
#     end
#   end 
# end 