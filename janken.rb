def janken
    puts "じゃんけん..."
    puts "0(グー) 1(チョキ) 2(パー) 3以上(戦わない)"
    
    jankens = ["グー","チョキ","パー"] 

    player_hand = gets.chomp.to_i
    counter_hand = rand(3).to_i

    puts "ホイ！"
    puts "----------------------------"
    puts "あなたは#{jankens[player_hand]}を出しました"
    puts "相手は#{jankens[counter_hand]}を出しました"
    puts "----------------------------"

    result_figure = player_hand - counter_hand

    if result_figure == 0
        puts "あいこで..."
        $case_pattern = "あいこ"
        $reset_game = true

    elsif (result_figure == -1) || (result_figure == 2)
        $case_pattern = "勝ち"
        acchimuite()

    elsif (result_figure == 1) || (result_figure == -2)
        $case_pattern = "負け"
        acchimuite()
    
    elsif (player_hand > 2)
        puts "お疲れ様でした、ゲームを終了します"    
    end
end

def acchimuite
    directions = ["上","下","左","右"]
    puts "あっちむいて〜"
    puts "上(0)下(1)左(2)右(3)"

    case $case_pattern 
    when "勝ち"
        player_dir = gets.chomp.to_i
        counter_dir = rand(4).to_i

        puts "ホイ！"
        puts "----------------------------"
        puts "あなた：#{directions[player_dir]}"
        puts "相手：#{directions[counter_dir]}"
        puts "----------------------------"

        if player_dir == counter_dir
            puts "あなたの勝ちです！！"
            $reset_game = false
        
        else
            $reset_game = true
        end
        
    when "負け"
        player_dir = gets.chomp.to_i
        counter_dir = rand(4).to_i

        puts "ホイ！"    
        puts "----------------------------"
        puts "あなた：#{directions[player_dir]}"
        puts "相手：#{directions[counter_dir]}"
        puts "----------------------------"

        if player_dir == counter_dir
            puts "あなたの負けです..."
            $reset_game =  false

        else
            $reset_game = true
        end
    end
end


$reset_game = true

while $reset_game do
    $reset_game = janken
end





