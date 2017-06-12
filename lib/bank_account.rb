

class BankAccount
  @username
  ACCOUNT_BALANCE = 0.00

  def initialize(username)
    username = username.split(" ")
    @username = username
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

end
