class CLI

  def run
    input1 = nil
    while input1 != "exit"
      puts "To search, enter 'search'"
      puts "To quit, enter 'exit'"
      print "Please type your selection: "
      input1 = gets.strip

      if input1 == "search"
        puts "**********************************"
        puts "Please enter a company name below:"
        input2 = gets.strip
        self.find_info(input2)
      end

    end
    puts "**********************************"
    puts "Bye!"
  end

  def find_info(company)
    API.get_company_info(company)
    self.display_info
  end

  def display_info
    puts "~OUTPUT~"
    puts "Company: #{Company.all.first.name}"
    puts "Website: #{Company.all.first.domain}"
    puts "Logo: #{Company.all.first.logo}"
    Company.wipe
    puts  "**********************************"
  end

end
