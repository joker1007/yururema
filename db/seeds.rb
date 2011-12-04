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
