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
daily_task8 = DailyTask.create(:title => "申請書類書いた？")
daily_task9 = DailyTask.create(:title => "冷蔵庫の食材の消費期限は大丈夫？")
daily_task10 = DailyTask.create(:title => "シャンプー買った？")
daily_task11 = DailyTask.create(:title => "Amazonの予約開始日じゃなかったっけ？")

category1 = Category.create(:name => "家事")
category2 = Category.create(:name => "買い物")
category3 = Category.create(:name => "仕事")

daily_task1.categories << category1
daily_task2.categories << category2
daily_task3.categories << category2
daily_task4.categories << category3
daily_task5.categories << category1
daily_task6.categories << category1
daily_task7.categories << category3
daily_task8.categories << category3
daily_task9.categories << category1
daily_task10.categories << category2
daily_task11.categories << category2
