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
    all[0..-1].each do |student|
      ages<<student[:age]
    end
    ages.inject{|sum, el| sum + el}/num

  end

  def name_string

    names=[]
    all[0..-1].each do |student|
    names<<student[:name]
    end

    "#{names[0]} #{names[1]} #{names[2]} #{names[3]} #{names[4]}"

  end

  def find_first_older_than(age)
    all[0..-1].each do |student|
      if student[:age] > age
        return student
      end
    end
  end

  def any_older_than?(age)
    ages=[]
    all[0..-1].each do |student|
      ages<<student[:age]
    end

    x= ages.reduce([]) do |result, value|
      result << value if value > age
      result
    end

    if x.first != nil
      x.first>21
    else
      false
    end


  end

  def find_student(student_to_find)

    included = all[0..-1].include?(student_to_find)

    if included == true
      return student_to_find
    else
      return nil
    end

  end

  def student_present?(student_to_find)
    all[0..-1].include?(student_to_find)
  end

  def grouped_by_age
   sort_ages=[]


   all[0..-1].each do |student|
      sort_ages << [student[:age], [student[:name]]]
   end

   Hash[sort_ages]

#     group = all.group_by {|hash| hash[:age]}
#
# puts group[10]



  end





end