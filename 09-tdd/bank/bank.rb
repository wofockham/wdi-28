class Bank
  attr_reader :name, :accounts

  def initialize(name)
    @name = name
    @accounts = Hash.new(0) # 0 rather than nil as default
  end

  def create_account(account_name, amount)
    @accounts[account_name] = amount
  end

  def deposit(account_name, amount)
    @accounts[account_name] += amount
  end

  def withdraw(account_name, amount)
    @accounts[account_name] -= amount if amount <= @accounts[account_name]
  end

  def balance(account_name)
    @accounts[account_name]
  end
end
