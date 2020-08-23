#Q1 次の配列の最後に "斎藤" を追加し，出力して下さい。

names = ["田中", "佐藤", "佐々木", "高橋", "斎藤"]
puts names[1]

names.each do |name|
puts name

end

puts "----------------------------------"
#Q2 次の二つの配列を合体させた新しい配列 array を作成し，出力して下さい。

array1 = %w(dog cat fish)
array2 = %w(bird bat tiger)
p array1.concat(array2)

puts "----------------------------------"
#Q3 次の配列の中に 3 がいくつあるかを出力するコードを書き，出力して下さい。

numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9].count(3)
puts numbers

puts "----------------------------------"
#Q4 次の配列から nil の要素を削除し，出力して下さい。（新しい配列を作成せずに実現して下さい）

sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]
sports.compact!

p sports

puts "----------------------------------"
#Q5 配列が空であれば true，1つ以上の要素があれば false を出力するコードを書いて下さい。




#Q6 次の配列から，期待された結果の配列 numbers2 を作成し，出力して下さい [10, 20, 30, 40, 50]

numbers1 = [1, 2, 3, 4, 5]
numbers2 = numbers1.map { |num| num * 10 }
p numbers2

puts "----------------------------------"
#Q7 次の配列の要素を 文字列 から 数字 に変換し，出力して下さい。（新しい配列を作成せずに実現して下さい）

array = ["1", "2", "3", "4", "5"]
p array.map!{|x| x.to_i}

puts "----------------------------------"
#Q8. 期待する出力結果になるようにコードを書き加えて下さい["Ruby", "Php", "Python", "Javascript"]
#["RUBY", "PHP", "PYTHON", "JAVASCRIPT"]

programming_languages = %w(ruby php python javascript)
upper_case_programming_languages =  %w[RUBY PHP PYTHON JAVASCRIPT]
programming_languages.unshift
upper_case_programming_languages.unshift
# コードを追加

# 以下は変更しないで下さい
p programming_languages
p upper_case_programming_languages
puts "----------------------------------"
#Q9. 次の配列を用いて，期待通りの出力結果になるようにコードを書いて下さい。

names = ["田中", "佐藤", "佐々木", "高橋"]


names.each.with_index(1) do |name, i|
 puts "会員No.#{i} #{name}さん"
end

puts "----------------------------------"

#Q10. 次の配列の各要素について， うに という文字列が含まれていれば「好物です」と表示し，
#そうでなければ「まぁまぁ好きです」と出力するコードを書いて下さい。

foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)
foods = gets
if foods.include?("うに")
 puts "好物です"
else
  puts "まぁまぁ好きです"
end

puts "----------------------------------"
#foods = %w(1:いか 2:たこ 3:うに 4:しゃけ 5:うにぎり 6:うに軍艦 7:うに丼)
#foods = gets.to_i
#case foods
#when 3,5,6,7
#  puts "好物です"
#when 1,2,4
#  puts "まぁまぁ好きです"
#end

#Q11. 次の配列を用いて，期待する出力結果になるようにコードを書いて下さい
#|（和集合）

sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

require 'set'
sports = Set["サッカー", "バスケ", "野球", "フットサル", "野球", "水泳", "ハンドボール", "卓球", "サッカー", "ボルダリング"]

puts "ユーザーの趣味一覧"


#p sports.uniq!

#puts "ユーザーの趣味一覧"

#puts sports
#sports = []

#p sports.uniq
#p sports

sports.each.with_index(1) do |sport, i|

  puts "No.#{i} #{sport}"

end

puts "----------------------------------"
#Q12. 次のハッシュから name の値を出力して下さい

data = { user: { name: "satou", age: 33 } }

puts data[:user][:name]

#次の user_data に，update_data の内容を反映させ，user_data の内容を書き換え，出力して下さい。

user_data = { name: "神里", age: 31, address: "埼玉" }
update_data = { age: 32, address: "沖縄" }

user_data.merge!(update_data)

puts user_data

user_data.each_value do |value|
 puts "#{value}"
end

puts "----------------------------------"
#Q14. 次の配列から全てのキーを取り出した配列を作成し，出力して下さい。

data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

data.each_key do |key|
  puts "#{key}"
end

puts "(配列の出力)"
#配列の出力
keys_array = data.keys
p keys_array


puts "----------------------------------"

#Q15. age というキーが含まれている場合は OK ，含まれていない場合は NG という文字列が出力されるコードを書いて下さい。
data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
data2 = { name: "yamada", hobby: "baseball", role: "normal" }

data1.merge!data2

if data1.include?(:age)
 puts "OK"
else
  puts "NG"
end


#Q16. 次の配列の各要素について，「私の名前は〜です。年齢は〜歳です。」と表示して下さい
users = [
  { name: "satou", age: 22 },
  { name: "yamada", age: 12 },
  { name: "takahashi", age: 32 },
  { name: "nakamura", age: 41 }
]

users = Hash["satou" => 22, "yamada" => 12, "takahashi" => 32, "nakamura" => 41]
users = Hash.new()
users = Hash.new {|hash, key| hash[key] = "none"}
users = Hash["satou" => 22, "yamada" => 12, "takahashi" => 32, "nakamura" => 41]

users.each do |key,value|
 puts "私の名前は#{key}です。年齢は#{value}歳です。"
end

#Q17. 次の Userクラス 内にコードを追加し，期待する出力結果になるようにして下さい。

class User

  attr_accessor :name, :age, :gender, :admin
  def initialize(name, age, gender, admin)
    @name = name
    @age = age
    @gender = gender
    @admin = admin
  end
end

def info
    <<-TEXT
    名前：#{@name}
    年齢：#{@age}
    性別：#{@gender}
    管理者権限：#{@admin}
    TEXT
end

#def info
#  puts"名前:#{@name}"

 #def name, age, gender, admin = (name,age,gender,admin)
  #@name,@age,@gender,@admin = name,age,gender,admin
    #@age = age
    #@gender = gender
    #@admin = admin


#end

user1 = User.new(name: "神里", age: 32, gender: "男", admin: true)
user2 = User.new(name: "あじー", age: 32, gender: "男", admin: false)


user1.info
puts "-------------"
user2.info



#Q18. 年齢を用いた場合分けを利用して，期待する出力結果になるようなUserクラスを作成して下さい。

# コードを追加
#class User

  #def initialize(name)
    #  @name = name
    #end
    #def introduce
    #  puts "こんにちは，#{@name}と申します。宜しくお願いいたします"
    #  puts "はいさいまいど〜，#{@name}です！！！"
    #end
#  end


#def introduce(name)
#  def name
#  @name
#end


#def name=(name)
#  @name = name
#end
#puts "こんにちは，#{name}と申します。宜しくお願いいたします"
#puts "はいさいまいど〜，#{name}です！！！"
#end




user1 = User.new(name: "あじー", age: 32)
user2 = User.new(name: "ゆたぼん", age: 10)

puts user1.introduce
puts user2.introduce


#Q19. 次のコードはエラーが出ます。期待する出力結果となるようにコードを修正して下さい

class Item
  def initialize(name)
      @name = name
    end
    def name
      puts "#{@name}"
end
end

book = Item.new("ゼロ秒思考")
book.name
