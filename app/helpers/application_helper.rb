module ApplicationHelper

  def all_time_income
    all_time_income = 0
    Purchase.all.each do |purchase|
      all_time_income += purchase.total
    end
    all_time_income
  end

end
