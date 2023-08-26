# Hello World
    puts "Hello World!"
    puts("Hello World")

# 出力メソッド
    puts [1, 2, 3] # => puts は引数を文字列に変換して出力するputs は引数を文字列に変換して出力する
    pp [1, 2, 3] # => pp は引数を人間に読みやすい形に変換して出力する

# 変数
    value = 42    # => ローカル変数（定義したスコープでのみ参照できる）
    @value = 42   # => インスタンス変数（定義したクラスのインスタンス間でのみ参照できる）
    @@value = 42  # => クラス変数（定義したクラスでのみ参照できる）
    $value = 42   # => グローバル変数（定義されていれば Ruby 全体から参照できる）
    FOO = 42      # => 定数

# 配列
    pp [1, 2, 3]

# 配列の参照と代入
    ary = [1, 2, 3]
    # n 番目の要素にアクセス
    pp ary[1]  # => 2

    # 要素に代入する
    pp ary[1] = 42
    pp ary     # => [1, 42, 3]

    # 存在しない要素にアクセスすると nil が返ってくる
    pp ary[100]  # => nil

# 配列の個数
    # 全要素数をカウント
    pp [1, 2, 3, 4, 5].size
    # 指定した要素数をカウント
    pp [3, 2, 1, 2, 1, 1].count(1)
    # => 3

# 配列の操作
    ary = [1, 2, 3, 4, 5]
    # 先頭に追加
    ary.unshift(0)
    # 末尾に追加
    ary.push(6)
    ary << 7
    pp ary
    # => [0, 1, 2, 3, 4, 5, 6, 7]

    # 先頭を取り出す
    pp ary.shift
    # => 0
    # 末尾を取り出す
    pp ary.pop
    # => 7

    puts ary
    # => [1, 2, 3, 4, 5, 6]

# 配列の結合
    puts [1, 2, 3] + [4, 5]
    # => [1, 2, 3, 4, 5]
    puts [1, 2, 3].concat [4, 5]
    # => [1, 2, 3, 4, 5]

# 配列 n回繰り返して結合
    puts [1, 2, 3] * 3
    # => [1, 2, 3, 1, 2, 3, 1, 2, 3]

# 配列の存在確認
    ary = ["homu", "mami", "mado"]
    pp ary.include? "homu"   # => true
    pp ary.include? "saya"   # => false

    # 配列の最小値/ 最大値
    # 最小値
    puts [3, 2, 1, 4, 5, 0].min     # => 0
    # 最大値
    puts [3, 2, 1, 4, 5, 0].max     # => 5
    # 最小値と最大値
    puts [3, 2, 1, 4, 5, 0].minmax  # => [0, 5]

# 連想配列
    # キーをシンボルとしたハッシュを定義
    homu = { name: "homu", age: 14 }
    puts homu
    # => {:name=>"homu", :age=>14}

    # 以下のように => を使うと好きな値をキーにする事もできる
    mami = { "name" => "mami", :age => 14, 1 => "one" }
    puts mami
    # => {"name"=>"mami", :age=>14, 1=>"one"}

# if文
    if cond
        puts "cond が真であればこの処理が呼ばれる"
    else
        puts "cond が偽であればこの処理が呼ばれる"
        puts "else 節は省略する事ができる"
    end

# 後置if文
    unless cond
        puts "cond が偽ならこの処理が呼ばれる"
    end

# case文
    case value
    when 1
        "one"
    when 2
        "two"
    when 3
        "three"
    end

# case when 特殊な記載方法
    case "213"
    # 正規表現にマッチするかどうか
    when /^\d+$/
        "numberes"
    # 指定した範囲にマッチするかどうか
    when (1..10)
        "in 1 ~ 10"
    # Integer のインスタンスかどうか
    when Integer
        "is Integer"
    end

# パターンマッチ
    case obj
    # 配列の中身を検証しつつ変数に束縛する
    in [first, *, last]
        [first, last]
    # ハッシュの中身を検証しつつ変数に束縛する
    in { name: String => name, age: Integer => age }
        [name, age]
    end

# While文
    while cond
        puts "cond が真の場合にこの処理が呼ばれ続ける"
        cond = get_response
    end

# for文
    for i in [1, 2, 3, 4, 5]
        puts "[1, 2, 3, 4, 5] の配列の要素数分だけここの処理が呼ばれる"
        puts "i に配列の各要素が代入される"
    end

# メソッド定義
    def plus(a, b)
        a + b
    end
    pp plus(1, 2)

# メソッド定義_外にある定数valueは指定できない
    value = 42
    def plus(a, b)
        # error: undefined local variable or method `value' for main:Object (NameError)
        a + b + value
    end
    puts plus(1, 2)

# デフォルト引数
    def func(a, b, c = 3)
        a + b + c
    end
    puts func(1, 2)

# 可変長引数
    def func(*args)
        args # => args は配列になる
    end
    puts func(1, 2)

# キーワード定数
    def func(name:, age:)
        "name:#{name}, age:#{age}"
    end
        puts func(name: "homu", age: 14)

# ブロック構文
    # & でブロックを受け取る
    def calc(&block)
        # call でブロックを評価する
        block.call(1, 2)
    end

    # || で call で渡した引数を受け取る
    result = calc do |a, b|
        a + b
    end
    puts result

    # do ~ end じゃなくて {} で記述することもできる
    result2 = calc { |a, b|
        a - b
    }
    pp result2

# ブロック構文_外にある定数valueを指定する方法
    def calc(&block)
        block.call(1, 2)
    end
    
    value = 42
    result = calc { |a, b|
        a + b + value
    }
    puts result

# パーセント記法
# スペース区切りの文字列の配列を定義する
    pp %w(homu mami mado)
    # => ["homu", "mami", "mado"]
    # () は {} や []、"" など好きな記号で代替できる
    puts %w{homu mami mado}
    puts %w[homu mami mado]
    puts %w"homu mami mado"
    puts %w!homu mami mado!

    %(テキスト) : ダブルクォート文字列
    %Q(テキスト) : 同上
    %q(テキスト) : シングルクォート文字列
    %x(テキスト) : コマンド出力
    %r(テキスト) : 正規表現
    %w(テキスト) : 要素が文字列の配列(空白区切り)
    %W(テキスト) : 要素が文字列の配列(空白区切り)。式展開、バックスラッシュ記法が有効
    %s(テキスト) : シンボル。式展開、バックスラッシュ記法は無効
    %i(テキスト) : 要素がシンボルの配列(空白区切り)
    %I(テキスト) : 要素がシンボルの配列(空白区切り)。式展開、バックスラッシュ記法が有効

# ファイルの読み込み
    # ファイルの中身を文字列で全て読み込んでくる
    file = File.read("hoge.rb")
    pp file
    # => "# ファイルの中身を全てテキスト形式で読み込んでくる\n" +
    #    "file = File.read(\"hoge.rb\")\n" +
    #    "pp file\n"

# ファイルの書込み
    ファイルを開いて書き込む
    File.open("foo.txt", "wb") do |file|
    file.write "homu\n"
    file.write "mami\n"
    file.write "mado\n"
    end

    pp File.read("foo.txt")
    # =+> "homu\n" + "mami\n" + "mado\n"
