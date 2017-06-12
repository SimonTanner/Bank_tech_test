

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
    time = Time.new
    time = "#{prepend_zero(time.day)}/#{prepend_zero(time.month)}/#{time.year}"
    if type == "deposit"
      @transactions.push([amount, " ", time])
    else
      @transactions.push([" ", amount, time])
    end
    return @transactions[-1]
  end

  def prepend_zero(number)
    sprintf("%02d", number)
  end

end
