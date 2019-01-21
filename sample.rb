class Player
  def hand
    puts "じゃんけんしよう"
    puts "0〜2の数字を入力してください\n0:グー\n1:チョキ\n2:パー"
    my_hand = gets.to_i 
    
    if my_hand< 0 || my_hand> 2
      puts "0〜2の数字を入力してください！！"
      player = Player.new#クラスをインスタンス化してplayerに代入する＃Playerはクラスなので先頭の文字は大文字を使う
      player.hand
    else
      return my_hand
    end
  end
end

class Enemy
  def hand
    enemy_hand = rand(3)# グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
  end
end

class Janken
  def pon(player_hand,enemy_hand)
    jankens = ["グー","チョキ","パー"]
    puts "自分の手:#{jankens[player_hand]}, 相手の手:#{jankens[enemy_hand]}"

    if (player_hand-enemy_hand+3)%3 == 0
      puts "あいこで"
      player = Player.new#クラスをインスタンス化してplayerに代入する＃Playerはクラスなので先頭の文字は大文字を使う
      enemy = Enemy.new
      janken = Janken.new
      janken.pon(player.hand, enemy.hand)

    elsif (player_hand-enemy_hand+3)%3 == 2
      puts"自分の勝ち"

    elsif (player_hand-enemy_hand+3)%3 == 1
      puts"自分の負け"
      
    end
  end
end
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる

player = Player.new
enemy = Enemy.new
janken = Janken.new
janken.pon(player.hand,enemy.hand )
