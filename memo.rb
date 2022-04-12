require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集する)"

memo_type = gets.chomp.to_s

if memo_type === "1"
    puts "新規作成：拡張子を除いてファイル名を入力してください"
    
    file_name = gets.chomp.to_s
    
    puts "メモしたい内容を記入してください"
    puts "完了したら　Ctrl+D　をおします"

    contents = $stdin.readlines.to_s
    
    CSV.open("#{file_name}.csv","w") do |csv|
    csv << [contents]
      
    end

elsif memo_type === "2"
    puts "編集：対象のファイル名を拡張子を除いて入力してください"
    
    file_name = gets.chomp.to_s
    
    puts "メモしたい内容を記入してください"
    puts "完了したら　Ctrl+D　をおします"

    contents = $stdin.readlines.to_s
    
    CSV.open("#{file_name}.csv","a") do |csv|
    csv << [contents]
    end

else 
    puts "１か２を入力してください"
    puts "メモアプリを終了します"

end

