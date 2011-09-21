# -*- coding: utf-8 -*-
titles = [
          "Web+DB PRESS vol.58 2010",
          "入門Git",
          "デジキャパ！ 2011年3月号",
          "ハートで感じる英文法",
          "はじめる！Rails３（１）",
          "プログラミング言語Ruby",
          "Effective C++"
]

authors = [
           "技術評論社",
           "濱野 junio 純",
           "Gakken",
           "大西泰斗／ポール・マクベイ",
           "黒田勉",
           "まつもとゆきひろ",
           "unknown"
]

comment = "こ、こめんとぉ。"

7.times do |n|
  Book.create(:title => titles[n], :authors => authors[n], :publish_year => 1989 + n,
               :comment => comment * n, :checked_out => (n % 3 == 1) ? true : false)
end

categories = %w(趣味 ビジネス ハウツー 啓蒙)
colors = [ "#000", "#c00", "#0c0", "#00c" ]
4.times do |n|
  Category.create(:name => categories[n], :color => colors[n])
end
