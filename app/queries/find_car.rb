class FindCar
  attr_reader :cars_count

  def initialize(cars = Car.all)
    @cars = cars
  end

  def call(params)
    scoped = sorter(@cars, params[:sort_type], params[:sort_direction])
  end

  private

  def sorter(scoped, sort_type, sort_direction)
    sort_direction ||= :desc
    sort_type ||= :created_at
    scoped.order(sort_type => sort_direction)
  end
end
