class Clock < ActiveRecord::Base
  belongs_to :user 

 def self.day_time 
    all = Clock.where('created_at >= ?', 1.day.ago)
        total = 0
     all.each do |clock|
      total += clock.time_end - clock.time_start
     end
     return (total / 3600).round(2)
  end 

  def self.week_time 
    all = Clock.where('created_at >= ?', 1.week.ago)
        total = 0
     all.each do |clock|
      total += clock.time_end - clock.time_start
     end
     return (total / 3600).round(2)
  end 

  def self.total_time
    total = 0
     all.each do |clock|
      total += clock.time_end - clock.time_start
     end
     return (total / 3600).round(2)
  end 

  def self.reverse_time
    sorted = all.order('created_at DESC')
  end
end

