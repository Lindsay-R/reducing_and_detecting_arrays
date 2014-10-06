class Students
  def all
    [
        {name: "Bob", age: 10},
        {name: "Sue", age: 10},
        {name: "Greg", age: 15},
        {name: "Amanda", age: 8},
        {name: "Steve", age: 22},
    ]
  end

  def average_age

    ages=[]
    num = all.count
    all[0..num].each do |student|
      ages<<student[:age]
    end
    ages.inject{|sum, el| sum + el}/num

  end

  def name_string

    names=[]
    num = all.count
    all[0..num].each do |student|
    names<<student[:name]
    end

    "#{names[0]} #{names[1]} #{names[2]} #{names[3]} #{names[4]}"

  end

  def find_first_older_than(age)

  end

  def any_older_than?(age)
    ages=[]
    num = all.count
    all[0..num].each do |student|
      ages<<student[:age]
    end

    tf=[]

    ages.each do |a|
      if a > age
        tf << true
      end
    end

    tf.include?(true)

  end

  def find_student(student_to_find)

   

  end

  def student_present?(student_to_find)

  end

  def grouped_by_age



  end





end