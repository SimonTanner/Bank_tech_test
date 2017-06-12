

class BankAccount
  @username
  ACCOUNT_BALANCE = 0.00

  def initialize(username)
    username = username.split(" ")
    @username = username
  end

  def username
    return @username.join(" ")
  end

  def balance
    return "£#{sprintf("%.2f", ACCOUNT_BALANCE)}"
  end

end
