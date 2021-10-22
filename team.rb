class Team
  # オブジェクトの変数（値）
  attr_accessor :name, :win, :lose, :draw
  
  # 初期化用の特別なメソッド
  def initialize(name,win,lose,draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end
  
  # オブジェクトのメソッド（処理）
  def calc_win_rate
    return win.to_f / (win + lose)
  end
  
  # チームの成績をターミナルに表示する
  def show_team_result
    puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は#{self.calc_win_rate}です。"
  end
end

# インスタンスの生成と、変数への代入
Giants = Team.new("ジャイアンツ",67,45,8)
Tigers = Team.new("タイガース",60,53,7)
Dragons = Team.new("ドラゴンズ",60,55,5)
Baystars = Team.new("ベイスターズ",56,58,6)
Carp = Team.new("カープ",52,56,12)
Swallows = Team.new("スワローズ",41,69,10)


# インスタンスの使用
Giants.show_team_result
Tigers.show_team_result
Dragons.show_team_result
Baystars.show_team_result
Carp.show_team_result
Swallows.show_team_result