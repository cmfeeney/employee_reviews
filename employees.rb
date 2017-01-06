class Employee
  def initialize(name:, email:, phone:, salary:)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
    @review = ''
    @performance = 'N/A'
    @satisfaction = FALSE
  end

attr_reader :name, :email, :phone, :salary, :review, :performance, :satisfaction 

  def add_review(location)
    review = File.open(location, 'r')
    while(line=review.gets)
      @review = @review + line
    end
    mark_performance(@review)
  end

  def mark_performance(perf)
    asset = perf.scan(/asset/)
    if asset.count >= 1
      @satisfaction = TRUE
      @performance = 'Satisfactorily'
    else
      @performance = 'Not Satisfactorily'
    end
  end

  def give_raise(money)
    @salary += money
  end
end
