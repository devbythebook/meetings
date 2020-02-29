def format_amount(value)
  result = sprintf("%10.2f", value.abs)
  if value < 0
    result += '-'
  else
    result + ' '
  end
end

def print_balance(account)
  printf "Debits:  %10.2f\n", account.debits
  printf "Credits: %10.2f\n", account.credits
  printf "Fees:    %s\n", format_amount(account.fees)
  printf "              -----\n"
  printf "Balance: %s\n", format_amount(account.balance)
end

User = Struct.new(:debits, :credits, :fees, :balance)
user = User.new(10.0, 20.0, -30.0, -10.0)
print_balance(user)
