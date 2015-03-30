number_of_tasks = 20

Task.delete_all
Category.delete_all
Estimate.delete_all

cat_ids = []
['Personal', 'Work', 'Other'].each do |c|
  cat = Category.create(name: c)
  cat_ids << cat.id
end

est_ids = []
[0, 1, 2, 3, 5, 8, 13].each do |e|
  est = Estimate.create(hours: e)
  est_ids << est.id
end

number_of_tasks.times do |i|
  Task.create({
                :name => "Task #{i + 1}",
                :priority => i + 1,
                :due => Time.now.to_date,
                :category_id => cat_ids[rand(3)],
                :estimate_id => i < 5 ? est_ids[0] : est_ids[rand(7)]
              })
end
