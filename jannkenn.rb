rock_paper_scissors=["グー","チョキ","パー"]
finger_pointing_game=["上","下","左","右"]
shout="ホイ!"
puts "じゃんけん..."

loop do
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    my_attack=gets.chomp

    if my_attack=="3" then
        puts "あなたの負けです"
        exit
    elsif my_attack!="0"&&my_attack!="1"&&my_attack!="2" then
        puts "入力が0～3ではありません"
        exit
    end

    puts shout
    puts "---------------"
    my_attack=my_attack.to_i
    enemy_attack=rand(3)
    puts "あなた：#{rock_paper_scissors[my_attack]}を出しました"
    puts "相手：#{rock_paper_scissors[enemy_attack]}を出しました"
    puts "---------------"

    case enemy_attack
    when my_attack then 
        puts "あいこで..."
        shout="ショ!"
        next
    when (my_attack+1)%3 then 
        victory_flag=true
    else
        victory_flag=false
    end

    puts "あっち向いて～"
    puts "0(上)1(下)2(左)3(右)"
    my_attack=gets.chomp

    if my_attack!="0"&&my_attack!="1"&&my_attack!="2"&&my_attack!="3" then
        puts "入力が0～3ではありません"
        exit
    end

    puts "ホイ!"
    puts "---------------"
    my_attack=my_attack.to_i
    enemy_attack=rand(4)
    puts "あなた：#{finger_pointing_game[my_attack]}"
    puts "相手：#{finger_pointing_game[enemy_attack]}"
    
    if enemy_attack==my_attack then
        if victory_flag then
            puts "あなたの勝ちです"
            exit
        else
            puts "あなたの負けです"
            exit
        end
    end
    
    shout="ホイ!"
    puts "じゃんけん..."
end
