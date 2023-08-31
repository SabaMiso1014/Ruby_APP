def title
    puts "----------------------------------------"
    puts "計算アプリです(※答えは整数、小数点以下は切り捨て)"
    puts "1：足し算 2：引き算 3：掛け算 4：割り算 5：終了"
    puts "1~5を選択して下さい (1,2,3,4,5)"
    puts "----------------------------------------"
end

title
print "モード："
x = gets.chomp

while x="1" || x="2" || x="3" || x="4"
    if x=="1"
        puts "足し算が選択されました"
        puts "数値を2つ入力して下さい"
        print "1つ目："
        a = gets.chomp
        print "2つ目："
        b = a.to_i + b.to_i
    elsif x=="2"
        puts "引き算が選択されました"
        puts "数値を2つ入力して下さい"
        print "1つ目："
        a = gets.chomp
        print "2つ目："
        b = a.to_i - b.to_i
    elsif x=="3"
        puts "掛け算が選択されました"
        puts "数値を2つ入力して下さい"
        print "1つ目："
        a = gets.chomp
        print "2つ目："
        b = a.to_i * b.to_i
    elsif x=="4"
        puts "割り算が選択されました"
        puts "数値を2つ入力して下さい"
        print "1つ目："
        a = gets.chomp
        print "2つ目："
        b = a.to_i / b.to_i
    end
    puts "結果：#{result}"
    title
    print "モード:"
    x = gets.chomp
end
puts "おつかれさまでした。"