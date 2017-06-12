

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
    balance
  end

  def debit(amount)
    @balance -= amount
    balance
  end

  def statement(amount)
    time = Time.new
    time = "#{prepend_zero(time.day)}/#{prepend_zero(time.month)}/#{time.year}"
    @transactions.push([amount, time])
    return @transactions[-1]
  end

  def prepend_zero(number)
    sprintf("%02d", number)
  end

end
