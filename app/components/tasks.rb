class Tasks < Netzke::Basepack::Grid
  def configure(c)
    super
    c.model = "Task"
    c.columns = [
                 :done,
                 :name,
                 {name: :notes, flex: 1},
                 :priority,
                 :score,
                 {name: :due, header: "Due On"},
                 {name: :category__name, header: "Category"},
                 {name: :estimate__hours, header: "Est. Hours"},
                 {name: :created_at, read_only: true, header: "Created"},
                 {name: :updated_at, read_only: true, header: "Updated"},
                ]
    c.scope = {done: [nil, false]}
  end
end
