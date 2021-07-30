def score(dice)
    # You need to write this method
    sum = 0
    dice = dice.join("")
    while dice.match?(/[15]/) do
      if dice.include?('111')
        sum += 1000
        dice.delete!('111')
      elsif dice.include?('5')
        sum += dice.count('5') * 50
        dice.delete!('5')
      elsif dice.include?('1')
        sum += dice.count('1') * 100
        dice.delete!('1')
      end
    end
    if dice.match?(/(\d)\1{2}/)
      num = dice.match(/(\d)\1{2}/)[1].to_i
      sum += num * 100
     end
    sum
  end


  p score([2,2,2])