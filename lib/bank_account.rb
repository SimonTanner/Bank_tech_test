

class BankAccount
  @username
  @transactions
  ACCOUNT_BALANCE = 0.00

  def initialize(username)
    username = username.split(" ")
    @username = username
    @transactions = []
    @balance = ACCOUNT_BALANCE
  end

  def username
    return @username.join(" ")
  end

  def balance
    return "£#{sprintf("%.2f", @balance)}"
  end

  def deposit(amount)
    @balance += amount
    type = "deposit"
    statement(amount, type)
    balance
  end

  def debit(amount)
    @balance -= amount
    type = "deposit"
    statement(amount, type)
    balance
  end

  def statement(amount, type)
    date = Time.new
    date = "#{prepend_zero(date.day)}/#{prepend_zero(date.month)}/#{date.year}"
    if type == "deposit"
      @transactions.push([date, amount, " ", @balance])
    else
      @transactions.push([date, " ", amount, @balance])
    end
    #return @transactions[-1]
  end

  def prepend_zero(number)
    sprintf("%02d", number)
  end

  def print_statement
    temp = []
    @transactions.each {|date, credit, debit, balance| temp.push(" #{date} || #{credit} || #{debit} || #{balance} ")}
    temp = temp.join("/n")
    print temp
    return temp
  end

end
