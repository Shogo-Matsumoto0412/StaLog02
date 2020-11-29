# StaLog
## home
<img width="1679" alt="スクリーンショット 2020-11-29 23 25 38" src="https://user-images.githubusercontent.com/66903388/100544660-a46ea880-329a-11eb-873d-01936230152a.png">

# 概要
「コロナ期間の自己成長」<br>
大学生である私の視点から、コロナ期間の孤独に打ち勝ち、大学に行けない間に同級生と差をつけるアプリを作りました。

# 機能一覧
・ユーザー登録、ログイン
・CRUD機能
・ページネーション機能
・検索機能
・いいね機能（Ajax）
・いいね数を動的に表示する機能（Ajax）
・DM機能
・コメント機能
・フォロー機能
・投稿機能
・カレンダー
・折れ線グラフ
・マイアイコン設定機能

# 使用技術
・Ruby 2.6.5
・Rails 5.2.4.4
・JavaScript
・VScode
・Bootstrap
・font-awesome
・Chartkick
・simple_calendar
・HTML
・CSS（Sass）
・Git, Github

# ページ説明
## category/show
分野の勉強時間を可視化するために折れ線グラフを使用しました。
<img width="1679" alt="スクリーンショット 2020-11-29 23 25 54" src="https://user-images.githubusercontent.com/66903388/100544726-ff080480-329a-11eb-8ac6-d996ba26c691.png">
## profile/show
カレンダーにその日勉強した分野と時間を表示することで自分がどれだけ勉強しているかをわかりやすくしています。
また、自分が投稿した一覧で見られるため、日記的に自分の勉強のログを振り返られるようにしています。
<img width="1679" alt="スクリーンショット 2020-11-29 23 26 15" src="https://user-images.githubusercontent.com/66903388/100544782-75a50200-329b-11eb-808b-31a1fb09d3b2.png">
## category/index
カテゴリーを自分で追加するとそのカテゴリーを投稿時に選択できるようになります。また、そのカテゴリーを選択して投稿したときに灰色から青に色が変わりクリックできるようになりクリックすると折れ線グラフのページに飛ぶようになっています。
<img width="1679" alt="スクリーンショット 2020-11-29 23 26 36" src="https://user-images.githubusercontent.com/66903388/100544929-75593680-329c-11eb-8206-64f0646fb61c.png">
## dmページ
このアプリにｄｍ機能をつけることで気になったり話してみたい人と話して勉強仲間になることができます。
<img width="1679" alt="スクリーンショット 2020-11-29 23 27 10" src="https://user-images.githubusercontent.com/66903388/100545116-a6863680-329d-11eb-8772-cdc1a529a2af.png">
## ユーザー検索
名前や目標で検索することで同じ目標を持っている人や友達と繋がれます。
<img width="1679" alt="スクリーンショット 2020-11-29 23 27 40" src="https://user-images.githubusercontent.com/66903388/100545172-f533d080-329d-11eb-91a7-06d39e0ebca8.png">
