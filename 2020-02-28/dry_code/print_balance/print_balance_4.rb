def format_amount(value)
  result = sprintf("%10.2f", value.abs)
  if value < 0
    result += '-'
  else
    result + ' '
  end
end

def print_line(label, value)
  printf "%-9s%s\n", label, value
end

def report_line(label, amount)
  print_line(label + ':', format_amount(amount))
end

def print_balance(account)
  report_line('Debits', account.debits)
  report_line('Credits', account.credits)
  report_line('Fees', account.fees)
  print_line('', '     -----')
  report_line('Balance', account.balance)
end

User = Struct.new(:debits, :credits, :fees, :balance)
user = User.new(10.0, 20.0, -30.0, -10.0)
print_balance(user)
