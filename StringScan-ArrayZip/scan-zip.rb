html = <<XXXX
<p>1993年2月24日
<a href="http://www.ruby-lang.org/ja/">Ruby's birthday</a></p>
<p>2014年1月1日
<a href="http://www.example.com/">元旦</a></p>
XXXX

## 情報を抜き出す
# 日付を抜き出す
dates = html.scan(/(\d+)年(\d+)月(\d+)日$/)

# リンクを抜き出す
links = html.scan(%r!<a href="(.+?)">(.+?)</a></p>!)

## 情報をまとめる
# インデックスループ
(0...dates.length).map{|i| puts [dates[i], links[i]]}

# Array#zip でまとめる
puts dates.zip(links)

