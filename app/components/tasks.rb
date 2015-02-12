class Tasks < Netzke::Basepack::Grid
  def configure(c)
    super
    c.model = "Task"
  end
end
