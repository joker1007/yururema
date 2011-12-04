# coding: utf-8
require 'spec_helper'

describe "DailyTask Model" do
  let(:daily_task) { DailyTask.new }
  let(:daily_task_no_title) { DailyTask.new(:desc => "task description") }
  it 'can be created' do
    daily_task.should_not be_nil
  end

  it 'cannot be blank title' do
    daily_task.valid?.should be_false
    daily_task_no_title.valid?.should be_false
  end

  shared_context "basic data" do
    before do
      @daily_task1 = DailyTask.create(:title => "今日ってゴミの回収日？")
      @daily_task2 = DailyTask.create(:title => "お茶買った？")
      @daily_task3 = DailyTask.create(:title => "レンタルビデオの返却は大丈夫？")
      @daily_task4 = DailyTask.create(:title => "打ち合わせ日程の調整した？")
      @daily_task5 = DailyTask.create(:title => "掃除機かけた？")
      @daily_task6 = DailyTask.create(:title => "洗濯物が溜まってない？")

      @category_kaji = Category.create(:name => "家事")
      @category_kaimono = Category.create(:name => "買い物")
      @category_shigoto = Category.create(:name => "仕事")

      @daily_task1.categories << @category_kaji
      @daily_task2.categories << @category_kaimono
      @daily_task3.categories << @category_kaimono
      @daily_task4.categories << @category_shigoto
      @daily_task5.categories << @category_kaji
      @daily_task6.categories << @category_kaji
    end
  end

  describe "カテゴリーに含まれるポストの取得について" do
    include_context "basic data"

    it "#get_category_count()" do
      DailyTask.get_category_count.should == 6
    end

    it "#get_category_count('家事')" do
      DailyTask.get_category_count("家事").should == 3
    end
  end
end
