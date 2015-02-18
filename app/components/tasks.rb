class Tasks < Netzke::Basepack::Grid
  def configure(c)
    super
    c.model = "Task"
    c.columns = [
                 :done,
                 :name,
                 {name: :notes, flex: 1},
                 :priority,
                 {name: :due, header: "Due on"},
                 {name: :created_at, read_only: true},
                 {name: :updated_at, read_only: true},
                ]
    c.scope = {done: [nil, false]}
  end
end
