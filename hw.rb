# 1 Знайти найбільший та найменший елементи масиву
arr = [3, 6, 1, 8, 2, 10]
sorted = arr.sort
min = sorted.first
max = sorted.last
puts "Найменший елемент: #{min}" 
puts "Найбільший елемент: #{max}" 


# 2 Обчислити суму елементів масиву
arr = [3, 6, 1, 8, 2, 10]
arr = [3, 6, 1, 8, 2, 10]
sum = 0
arr.each do |item|
  sum += item
end
puts "Сума елементів : #{sum}" 


# 3  Знайти кількість входжень заданого елементу у масив
arr = [3, 6, 1, 8, 2, 10]
num = 6
count = 0
for i in arr
  if i == num
    count += 1
  end
end
puts "Кількість входжень числа #{num} у масиві: #{count}" 


# 4 Видалити всі входження заданого елементу з масиву
arr = [3, 6, 1, 8, 2, 10]
num = 6
new_arr = arr.reject { |i| i == num }
puts " #{num}: #{new_arr}" 

# 5 Перевернути масив
arr = [3, 6, 1, 8, 2, 10]
i = 0
j = arr.length - 1
while i < j
  temp = arr[i]
  arr[i] = arr[j]
  arr[j] = temp
  i += 1
  j -= 1
end
puts "Перевернутий масив: #{arr}" 


# 6 Вивести масив у зворотному порядку, не використовуючи метод reverse
arr = [3, 6, 1, 8, 2, 10]
for i in (arr.length - 1).downto(0)
  puts arr[i]
end
 

# 7 Перевірити, чи містить масив заданий елемент
arr = [3, 6, 1, 8, 2, 10]
elem = 6
puts arr.include?(elem) ? "Масив містить елемент #{elem}" : "Масив не містить елемент #{elem}"


# 8 Вивести всі парні елементи масиву
arr = [3, 6, 1, 8, 2, 10]
even_arr = arr.filter(&:even?)
puts even_arr.inspect # виведе "[6, 8, 2, 10]"

# 9 Вивести всі непарні елементи масиву
arr = [3, 6, 1, 8, 2, 10]
odd_arr = arr.select { |elem| elem % 2 == 1 }
puts odd_arr.inspect # виведе "[3, 1]"


# 10 Вивести новий масив, що містить квадрати елементів початкового масиву
arr = [3, 6, 1, 8, 2, 10]
squared_arr = []
arr.each { |elem| squared_arr << elem ** 2 }
puts squared_arr.inspect 


# 11 Перетворити масив в хеш, де ключами будуть елементи, а значеннями їх індекси у масиві
arr = [3, 6, 1, 8, 2, 10]
hash = Hash[arr.map.with_index.to_a]
puts hash.inspect 


# 12 Перетворити масив у новий масив, де кожен елемент - це сума його і попереднього елементів у початковому масиві
arr = [3, 6, 1, 8, 2, 10]
summed_arr = arr.inject([]) { |result, elem| result << (result.last.to_i + elem) }
puts summed_arr.inspect 


# 13 Перетворити масив у новий масив, де кожен елемент - це сума його і всіх попередніх елементів у початковому масиві
arr = [3, 6, 1, 8, 2, 10]
summed_arr = []
sum = 0
arr.each do |elem|
  sum += elem
  summed_arr << sum
end
puts summed_arr.inspect 


# 14 Вивести індекс першого елементу масиву, який більше за задане число
arr = [3, 6, 1, 8, 2, 10]
number = 5
index = arr.find_index { |elem| elem > number }
puts index.inspect 



# 15 Вивести елементи масиву, які рівні заданому числу
aarr = [3, 6, 1, 8, 2, 10, 6, 1]
number = 6
result_arr = arr.select { |elem| elem == number }
puts result_arr.inspect 



# 16 Перетворити масив строк у новий масив, де кожна строка записана у зворотному порядку
arr = ["hello", "world", "ruby"]
reversed_arr = arr.collect { |str| str.reverse }
puts reversed_arr.inspect 


# 17 Вивести суму елементів масиву, які менші за задане число
arr = [3, 6, 1, 8, 2, 10]
number = 5
sum = 0
arr.each { |elem| sum += elem if elem < number }
puts sum.inspect 



# 18 Вивести кількість унікальних елементів масиву
arr = [1, 2, 3, 4, 3, 2, 1, 5, 6, 5]
counts = Hash.new(0)
arr.each { |elem| counts[elem] += 1 }
unique_count = counts.keys.length
puts unique_count.inspect 



# 19 Перетворити масив строк у новий масив, де кожна строка записана в верхньому регістрі
arr = ["hello", "world", "ruby"]
upcased_arr = arr.collect { |str| str.upcase }
puts upcased_arr.inspect 


# 20 Знайдіть суму перших 10 натуральних чисел
sum = (1 + 10) * 10 / 2
puts sum 


# 21 Виведіть всі числа від 1 до 100, які діляться на 3 без остачі
(1..100).each do |i|
    puts i if i % 3 == 0
  end


# 22 Знайдіть факторіал числа 5 (5!)
factorial = (1..5).inject(:*)
puts factorial 



# 23 Виведіть всі числа Фібоначчі до 100
a = 0
b = 1
fibonacci = [a, b]
while (c = a + b) <= 100
  fibonacci << c
  a = b
  b = c
end
puts fibonacci.inspect 

# 24 Знайдіть кількість слів у рядку:
string = "The quick brown fox jumps over the lazy dog"
word_count = string.split.count
puts word_count 


# ------ Ітератори ------------


# 25 Знайдіть суму всіх чисел масиву
numbers = [1, 2, 3, 4, 5]
sum = numbers.sum
puts sum 


# 26 Знайдіть найбільше число в масиві
numbers = [4, 2, 7, 1, 9, 5]
max_number = numbers.reduce {|acc, i| acc > i ? acc : i}
puts max_number 



# 27 Виведіть всі ключі та значення хешу
hash = {a: 1, b: 2, c: 3}
pairs = hash.map {|key, value| "#{key} => #{value}" }
puts pairs


# 28 Перетворіть масив чисел у масив рядків
nnumbers = [1, 2, 3, 4, 5]
string_array = []
numbers.each { |number| string_array << number.to_s }
puts string_array.inspect 


# 29 Виведіть всі парні числа масиву:
numbers = [1, 2, 3, 4, 5]
numbers.select { |num| num.even? }.each { |num| puts num }



# 30 Виведіть всі значення хешу, які є парними числами
numbers = [1, 2, 3, 4, 5]
even_numbers = []
numbers.each do |number|
  even_numbers << number if number.even?
end
puts even_numbers



# ---------- block -----------------
# У Ruby блок - це шматок коду, який може передаватися як аргумент до методу. Блоки використовуються для виконання додаткового коду всередині методу.

# 31 Використання блоку для ітерації по масиву
hash = {a: 1, b: 2, c: 3, d: 4}
hash.each do |key, value|
if value > 2
puts value
end
end


# 32 Пошук максимального значення у масиві
numbers = [10, 50, 20, 30, 40]
max = numbers[0]
numbers.each do |num|
  max = num if num > max
end
puts max 



# 33 Пошук середнього значення у масиві
numbers = [10, 50, 20, 30, 40]
sum = 0
numbers.each {|num| sum += num}
average = sum / numbers.size.to_f
puts average #=> 30.0





# 34 Функція, яка дозволяє вибирати між двома блоками
def choose_block(use_first_block, &first_block)
  if use_first_block
    first_block.call
  else
    yield
  end
end


# 35 Функція, яка повертає масив зі значеннями, перетвореними за допомогою блоку
def map_array(arr, &block)
  arr.map(&block)
end
arr = [1, 2, 3, 4, 5]
squared = map_array(arr) { |num| num ** 2 } #=> [1, 4, 9, 16, 25]
doubled = map_array(arr) { |num| num * 2 } #=> [2, 4, 6, 8, 10]


# --------- Proc ---------------
# Ruby Proc - це об'єкт, який містить блок коду, який може бути переданий в якості аргументу іншій функції або збережений як змінна, і може бути викликаний в будь-який час.

#  36 Proc - це передача його в метод фільтрації масиву:

my_proc = Proc.new { |x| x > 5 }
# Фільтрування масиву з використанням Proc
my_array = [2, 4, 6, 8, 10]
filtered_array = my_array.select(&my_proc)
# Виведення результату
puts filtered_array.inspect 



# 37 Інший приклад використання Proc полягає в тому, що він може бути використаний як альтернатива блокові:
# Використання Proc як альтернативи блоку
def my_method(&my_proc)
  puts "Before Proc"
  my_proc.call
  puts "After Proc"
end

my_method { puts "Inside Proc" }



# Ще один приклад використання Proc полягає в тому, що він може бути використаний для збереження коду, який може бути використаний в багатьох місцях:
# 38  Використання Proc для збереження коду  ?????
addition_proc = Proc.new { |x, y| x + y }
multiplication_proc = Proc.new { |x, y| x * y }

# Виклик Proc в різних контекстах
puts addition_proc.call(3, 4) # 
puts multiplication_proc.call(3, 4) 



#  ------------- lambda ------------
# Лямбда-вирази в Ruby - це анонімні функції, які можуть бути передані як аргументи іншим функціям або збережені у змінній для подальшого використання.

# 39 Використання лямбди для збільшення значення змінної
increment = ->(x) { x + 1 }
puts increment.call(5) 


# 40 Використання лямбди для збільшення значення всіх елементів масиву
arr = [1, 2, 3]
increment = ->(n) { n + 1 }
new_arr = arr.map(&increment) 


# 41 Використання лямбди як методу об'єкту
str = "hello world"
upcase_lambda = lambda { |char| char.upcase }
reverse_str = str.each_char.map(&upcase_lambda).reverse.join


# 42 Використання лямбди для знаходження мінімального значення
min_num = ->(a, b) { a < b ? a : b }
puts min_num.call(5, 3)#=> 3


# 43 Використання лямбди для визначення типу даних
is_string = ->(obj) { obj.is_a?(String) }
puts is_string.call("hello") #=> true
puts is_string.call(123)



# 44 Використання лямбди для генерації HTML-коду
tag = lambda { |name, content| sprintf("<%s>%s</%s>", name, content, name) }
tag.call("h1", "Hello world") 


