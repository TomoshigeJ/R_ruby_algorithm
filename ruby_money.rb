money = 6498
# 金額が大きい紙幣、硬貨から優先して利用する
# 紙幣、硬貨は[1, 5, 10, 50, 100, 500, 1000, 5000, 10000]を対象とする
# {1=>3, 5=>1, 10=>4, 50=>1, 100=>4, 500=>0, 1000=>1, 5000=>1, 10000=>0}

cb = [1,5,10,50,100,500,1000,5000,10000]
cb.sort!.reverse!
p cb

r = {}
cb.each do |n|
  mai = money / n
  add_hash = { n => mai}
  r.merge!(add_hash)
  unless mai == 0
    money = money - (n * mai)
  end
end
p money
p r