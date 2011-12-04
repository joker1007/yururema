# coding: utf-8
CategoryShip.delete_all
DailyTask.delete_all
Category.delete_all

daily_task1 = DailyTask.create(:title => "今日ってゴミの回収日？")
daily_task2 = DailyTask.create(:title => "お茶買った？")
daily_task3 = DailyTask.create(:title => "レンタルビデオの返却は大丈夫？")
daily_task4 = DailyTask.create(:title => "打ち合わせ日程の調整した？")
daily_task5 = DailyTask.create(:title => "掃除機かけた？")
daily_task6 = DailyTask.create(:title => "洗濯物が溜まってない？")
daily_task7 = DailyTask.create(:title => "明日行く場所の乗り換え調べた？")
daily_task9 = DailyTask.create(:title => "冷蔵庫の食材の消費期限は大丈夫？")
daily_task10 = DailyTask.create(:title => "シャンプー買った？")
daily_task11 = DailyTask.create(:title => "Amazonの予約開始日じゃなかったっけ？")
daily_task12 = DailyTask.create(:title => "薬の準備は大丈夫？")
daily_task13 = DailyTask.create(:title => "病院の予約とった？")
daily_task14 = DailyTask.create(:title => "ハードディスクの容量が少ないかも？")
daily_task15 = DailyTask.create(:title => "今日は読みたかった漫画の発売日？")
daily_task16 = DailyTask.create(:title => "勉強会の申し込みは済んだ？")
daily_task17 = DailyTask.create(:title => "今日はライブのチケットの販売開始日？")
daily_task18 = DailyTask.create(:title => "明日は朝番（夜番）？")
daily_task19 = DailyTask.create(:title => "スポンジ買うの忘れてない？")
daily_task20 = DailyTask.create(:title => "玄関掃除は大丈夫？")
daily_task21 = DailyTask.create(:title => "排水口の掃除はした？")
daily_task22 = DailyTask.create(:title => "振り込みは忘れてない？")
daily_task23 = DailyTask.create(:title => "メールの返信忘れてない？")
daily_task24 = DailyTask.create(:title => "部屋の植物の水やり大丈夫？")
daily_task25 = DailyTask.create(:title => "天気予報はチェックした？")
daily_task26 = DailyTask.create(:title => "テレビ番組の予約録画はOK？")
daily_task27 = DailyTask.create(:title => "自転車の空気は大丈夫？")
daily_task28 = DailyTask.create(:title => "トイレットペーパーの補充は？")
daily_task29 = DailyTask.create(:title => "いつも飲む薬は飲んだ？")
daily_task30 = DailyTask.create(:title => "クリーニング取りにいった？")
daily_task31 = DailyTask.create(:title => "故障してる家電の修理依頼は？")
daily_task32 = DailyTask.create(:title => "買ったのに読んでない本はない？")
daily_task33 = DailyTask.create(:title => "目覚まし時計のセットは大丈夫？")
daily_task34 = DailyTask.create(:title => "恋人や友人の記念日を忘れてない？")
daily_task35 = DailyTask.create(:title => "ケータイの充電は大丈夫？")
daily_task36 = DailyTask.create(:title => "銀行からお金おろさなくていいの？")
daily_task37 = DailyTask.create(:title => "卵買った？")
daily_task38 = DailyTask.create(:title => "コーヒーの豆買った？")
daily_task39 = DailyTask.create(:title => "牛乳買った？")

category1 = Category.create(:name => "家事")
category2 = Category.create(:name => "買い物")
category3 = Category.create(:name => "仕事")
category4 = Category.create(:name => "健康")
category5 = Category.create(:name => "コンピュータ")

daily_task1.categories << category1
daily_task2.categories << category2
daily_task3.categories << category2
daily_task4.categories << category3
daily_task5.categories << category1
daily_task6.categories << category1
daily_task7.categories << category3
daily_task9.categories << category1
daily_task10.categories << category2
daily_task11.categories << category2
daily_task12.categories << category4
daily_task13.categories << category4
daily_task14.categories << category5
daily_task15.categories << category2
daily_task16.categories << category5
daily_task17.categories << category2
daily_task18.categories << category3
daily_task19.categories << category2
daily_task20.categories << category1
daily_task21.categories << category1
daily_task22.categories << category1
daily_task23.categories << category3
daily_task24.categories << category1
daily_task25.categories << category3
daily_task26.categories << category1
daily_task27.categories << category1
daily_task28.categories << category1
daily_task29.categories << category1
daily_task30.categories << category1
daily_task31.categories << category1
daily_task32.categories << category1
daily_task33.categories << category3
daily_task34.categories << category1
daily_task35.categories << category1
daily_task36.categories << category1
daily_task37.categories << category2
daily_task38.categories << category2
daily_task39.categories << category2
